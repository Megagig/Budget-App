class CreateGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :groups do |t|
      t.string :icon
      t.string :name
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
