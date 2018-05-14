class AddAttachmentImageToDesigns < ActiveRecord::Migration[4.2]
  def self.up
    change_table :designs do |t|
      t.attachment :image, null: false
    end
  end

  def self.down
    remove_attachment :designs, :image
  end
end
