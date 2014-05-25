class ArtistGroup < ActiveRecord::Base
  belongs_to :country
  has_many :artists , :dependent => :destroy
end
