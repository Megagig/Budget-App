class CreateDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :details do |t|
      t.string :name
      t.decimal :amount
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
