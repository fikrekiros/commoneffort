class Country < ActiveRecord::Base
has_many :artist_groups , :dependent => :destroy
#has_many :artists

	validates :name, presence: true
	validates :country_code, presence: true
	validates :continent, presence: true
end
