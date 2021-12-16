class Tree < ApplicationRecord
    has_one_attached :images
    # validate :image_type

    # private
    # def image_type
    #     images.each do |image|
    #         if !image.content_type.in?(%('image/jpeg image/png'))
    #             errors.add(:images, 'solo se admiten archivos tipo JPEG or PNG')
    #         end
    #     end
    # end
end
