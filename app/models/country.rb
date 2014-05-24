class Country < ActiveRecord::Base
	validates :name, presence: true
	validates :country_code, presence: true
	validates :continent, presence: true
end
