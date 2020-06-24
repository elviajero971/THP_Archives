class CreateListings < ActiveRecord::Migration[5.2]

  def change
    create_table :listings do |t|
      t.belongs_to :city, index: true
      t.belongs_to :user, index: true
      t.integer :available_beds
      t.integer :price
      t.text :description
      t.boolean :has_wifi
      t.timestamps
    end
  end
end
