class CreateReples < ActiveRecord::Migration
  def change
    create_table :reples do |t|
      
      t.string :name
      t.string :contents
       
      t.integer :recip_id # 중요! id를 댓글의 [원글 테이블 명]_id 으로 꼭 해야 한다.

      t.timestamps null: false
    end
  end
end
