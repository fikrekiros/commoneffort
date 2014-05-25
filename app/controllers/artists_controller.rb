class ArtistsController < ApplicationController
	def new
		@artist = Artist.new
	end

	def create
		 #@country = Country.find(params[:country_id])
        @artist_group = ArtistGroup.find(params[:artist_group_id])
        @artist = @artist_group.artists.create(artist_params)
        if @artist.save
  		
          redirect_to artist_group_path(@artist_group)
         else
          render 'new'
         end

        #redirect_to artist_group_path(@artist_group)
    end
    def index
        @artists = Country.all
    end
 
  private
    def artist_params
      params.require(:artist).permit(:first_name, :last_name, :dob, :join_date , :depart_date)
     
    end
end
