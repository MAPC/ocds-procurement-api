class Release < ApplicationRecord
  belongs_to :package
  validate :check_release_integrity

  def check_release_integrity
    schema_path = "#{Dir.pwd}/spec/support/api/schemas/single-release.json"

    if JSON::Validator.fully_validate(schema_path, data, strict: true)
                      .select { |value| value.include?("contained undefined properties") }
                      .present?
      errors.add(:data, :invalid, message: JSON::Validator.fully_validate(schema_path, data, strict: true)
                                                          .select { |value| value.include?("contained undefined properties") })
    elsif !JSON::Validator.validate(schema_path, data)
      errors.add(:data, :invalid, message: JSON::Validator.fully_validate(schema_path, data))
    end
  end
end
