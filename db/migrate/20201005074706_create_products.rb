class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :handle
      t.string :product_type
      t.string :vendor
      t.text :description
      t.datetime :published_at

      t.timestamps
    end
  end
end
