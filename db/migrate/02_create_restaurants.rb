class CreateRestaurants < ActiveRecord::Migration[6.1]
    def change
      create_table :restaurants do |t|
        t.belongs_to :user
        t.string :name
        t.string :description
        t.string :category
        t.string :location
        t.string :pricing
        t.integer :rating
  
        t.timestamps
      end
    end
  end
  