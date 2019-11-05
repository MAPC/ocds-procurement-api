class AddPackageToReleases < ActiveRecord::Migration[6.0]
  def change
    add_reference :releases, :package, foreign_key: true
  end
end
