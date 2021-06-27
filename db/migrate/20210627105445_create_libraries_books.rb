class CreateLibrariesBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :libraries_books do |t|
      t.references :library, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end