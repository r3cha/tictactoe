class Room < ApplicationRecord

  before_save do
    # Generate slug
    # loop do
    #   self.slug = SecureRandom.uuid
    #   break if Room.where(slug: SecureRandom.uuid).blank?
    # end
  end
end
