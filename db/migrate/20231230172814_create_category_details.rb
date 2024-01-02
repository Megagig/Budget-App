class CreateCategoryDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :category_details do |t|
      t.references :group, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
