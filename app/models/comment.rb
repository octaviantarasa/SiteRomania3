class Comment < ActiveRecord::Base
	has_many :users
	has_many :locations
	validates :com_text, presence: true
end
