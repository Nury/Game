class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :number
      t.integer :winner

      t.timestamps
    end
  end
end
