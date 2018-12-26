class Musica < ApplicationRecord
	has_many_attached :audios
	has_one_attached :image
end
