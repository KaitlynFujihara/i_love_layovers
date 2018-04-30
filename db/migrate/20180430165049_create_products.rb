class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
     t.column :price, :integer
     t.column :name, :string
     t.column :description, :string

     t.timestamps
    end
  end
end
