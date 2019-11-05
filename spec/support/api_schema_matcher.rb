require 'pry'

RSpec::Matchers.define :match_response_schema do |schema|
  schema_directory = "#{Dir.pwd}/spec/support/api/schemas"
  schema_path = "#{schema_directory}/#{schema}.json"

  match do |response|
    if JSON::Validator.validate(schema_path, response.body, strict: true)
      return true
    elsif JSON::Validator.fully_validate(schema_path, response.body, strict: true)
                         .select { |value| value.include?("contained undefined properties") }
                         .present?
      return false
    else
      JSON::Validator.validate(schema_path, response.body)
    end

  end

  failure_message do |response|
    Pry::ColorPrinter.pp(JSON::Validator.fully_validate(schema_path, response.body, strict: true))
  end
end
