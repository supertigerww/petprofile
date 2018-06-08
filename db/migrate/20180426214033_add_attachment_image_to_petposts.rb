class AddAttachmentImageToPetposts < ActiveRecord::Migration
  def self.up
    change_table :petposts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :petposts, :image
  end
end
