class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.string :post_type
      t.string :post_status
      t.text :content

      t.timestamps
    end
  end
end
