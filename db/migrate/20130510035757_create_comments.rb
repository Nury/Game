class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :num
      t.integer :player
      t.integer :post_id

      t.timestamps
    end
  end
end
