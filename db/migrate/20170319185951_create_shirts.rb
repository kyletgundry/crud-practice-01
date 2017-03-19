class CreateShirts < ActiveRecord::Migration[5.0]
  def change
    create_table :shirts do |t|
      t.string :brand
      t.integer :price
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
