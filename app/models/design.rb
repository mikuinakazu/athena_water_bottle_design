class Design < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy

  def like_user(user_id)
   likes.find_by(user_id: user_id)
  end

  has_attached_file  :image , styles: {medium: "300x300", thumb: "100x100"}
  validates_attachment_content_type  :image , content_type: ["image/jpg","image/jpeg","image/png"]
end

