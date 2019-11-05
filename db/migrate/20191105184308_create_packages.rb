class CreatePackages < ActiveRecord::Migration[6.0]
  def change
    create_table :packages do |t|
      t.string :uri
      t.string :version
      t.string :extensions, array: true
      t.datetime :published_date
      t.string :license
      t.jsonb :publisher
      t.string :publication_policy

      t.timestamps
    end
  end
end
