class ArtistsController < ApplicationController
	
	def create
		 #@country = Country.find(params[:country_id])
        @artist_group = ArtistGroup.find params[:artist_group_id]
        @artist = @artist_group.artists.create(artist_params)
        if @artist.save
  		
          redirect_to artist_group_path(@artist_group)
        else
          render 'new'
        end
    end
    
    def index
        @artists = Artist.all
    end
    
    def show
        @artist = Artist.find(params[:id])
    end
    
    def edit
        @artist = Artist.find(params[:id])
    end
    
    def update
       @artist = Artist.find(params[:id])
 
       if @artist.update(artist_params)
         redirect_to @artist
         render 'edit'
        end
    end
    
    def destroy
        @artist = Artist.find(params[:id])
        @artist.destroy
 
        redirect_to @artist
    end
 
   private
    def artist_params
      params.require(:artist).permit(:first_name, :last_name, :dob, :join_date , :depart_date)
     
    end
end
