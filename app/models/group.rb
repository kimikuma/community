class Group < ApplicationRecord

  has_many :group_users,dependent: :destroy
  has_many :users,through: :group_users

  has_one_attached :group_image

  def is_owner_by?(user)
    owner_id==user.id
  end

  def includesUser?(user)
    group_users.exists?(user_id: user.id)
  end
end
