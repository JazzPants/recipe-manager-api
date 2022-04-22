class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :name
      t.string :description
      t.string :category
      t.string :location
      t.string :pricing
      t.string :image

      t.timestamps
    end
  end
end
