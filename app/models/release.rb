class Release < ApplicationRecord
  belongs_to :package
  validate :check_release_integrity

  def check_release_integrity
    schema_directory = "#{Dir.pwd}/spec/support/api/schemas"
    schema_path = "#{schema_directory}/single-release.json"

    if JSON::Validator.validate(schema_path, self.data, strict: true)
      return true
    elsif JSON::Validator.fully_validate(schema_path, self.data, strict: true)
                         .select { |value| value.include?("contained undefined properties") }
                         .present?
      errors.add(:data, :invalid, message: JSON::Validator.fully_validate(schema_path, self.data, strict: true).select { |value| value.include?("contained undefined properties") })
    else
      unless JSON::Validator.validate(schema_path, self.data)
        errors.add(:data, :invalid, message: JSON::Validator.fully_validate(schema_path, self.data))
      end
    end
  end
end
