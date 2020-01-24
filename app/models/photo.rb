class Photo < ApplicationRecord
  belongs_to :album
  validates :image, presence: true
  validates :tagline, presence: true
  
  mount_uploader :image, AvatarUploader
  validate :photos_length
  def photos_length
    if (self.album.photos.length > 25)
      errors.add(:_, 'only 25 photos allowed')
    end

  end

end
