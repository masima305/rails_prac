class CreateRecips < ActiveRecord::Migration
  def change
    create_table :recips do |t|
      
      t.string :ing_1
      t.string :ing_2
      t.string :ing_3
      t.string :ing_l

      t.timestamps null: false
    end
  end
end
