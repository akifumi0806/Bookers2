class Mypage < ApplicationRecord
	has_many :mypages, dependent :destroy
	belongs_to :books
	attachment :profile_image
end
