class CreateBuckets < ActiveRecord::Migration
  def self.up
    create_table :buckets do |t|
      t.string :description
      t.text :extra
      t.integer :owner_id
      t.string :owner_type
      t.timestamps
    end
  end

  def self.down
    drop_table :buckets
  end
end
