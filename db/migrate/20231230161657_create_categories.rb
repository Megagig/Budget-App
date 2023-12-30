class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.decimal :amount
      t.string :name
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
