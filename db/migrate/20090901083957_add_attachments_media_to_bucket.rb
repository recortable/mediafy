class AddAttachmentsMediaToBucket < ActiveRecord::Migration
  def self.up
    add_column :buckets, :media_file_name, :string
    add_column :buckets, :media_content_type, :string
    add_column :buckets, :media_file_size, :integer
    add_column :buckets, :media_updated_at, :datetime
  end

  def self.down
    remove_column :buckets, :media_file_name
    remove_column :buckets, :media_content_type
    remove_column :buckets, :media_file_size
    remove_column :buckets, :media_updated_at
  end
end
