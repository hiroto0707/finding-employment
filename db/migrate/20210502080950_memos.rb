class Memos < ActiveRecord::Migration[6.0]
  def change
    create_table :memos do |t|
      t.string :title,            null: false
      t.text :body,               null: false
      t.integer :industry_id,     null: false
      t.text :selection_status,  null: false
      t.references :user,         null: false,foreign_key: true
      t.timestamps
    end
  end
end
