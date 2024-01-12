class CreateCategoryDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :category_details do |t|
      t.references :category, null: false, foreign_key: true
      t.references :detail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
