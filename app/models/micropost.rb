class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :favorites
  has_many :likes, through: :favorites, source: :user
  # has_many :reverses_of_favorite, class_name: 'Favorite', foreign_key: 'user_id'

  # def favorite(other_user)
  #   unless self == other_user
  #     self.favorites.find_or_create_by(micropost_id: other_user.id)
  #   end
  # end

  # def unfavorite(other_user)
  #   favorite = self.favorites.find_by(micropost_id: other_user.id)
  #   favorite.destroy if favorite
  # end

  # def like?(other_user)
  #   self.likes.include?(other_user)
  # end
end
