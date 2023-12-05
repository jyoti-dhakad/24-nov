class CreateBikes < ActiveRecord::Migration[7.1]
  def change
    create_table :bikes do |t|
      t.string :name
      t.string :model_no
      t.string :price
      t.string :color
      t.string :lighting

      t.timestamps
    end
  end
end
