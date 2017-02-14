class CreateRecips < ActiveRecord::Migration
  def change
    create_table :recips do |t|
      
      t.string "1_ing"
      t.string "2_ing"
      t.string "3_ing"
      t.string "l_ing"

      t.timestamps null: false
    end
  end
end
