class CreateEnterprises < ActiveRecord::Migration[6.0]
  def change
    create_table :enterprises do |t|
      t.integer :industry_id,       null: false
      t.string :title,              nill: false
      t.text :text,                 null: false
      t.text :theme,                null: false
      enterprise_url
      t.references :user,           null: false,foreign_key: true
      t.timestamps
    end
  end
end
