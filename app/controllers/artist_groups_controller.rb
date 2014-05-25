class ArtistGroupsController < ApplicationController

	def create
    @country = Country.find(params[:country_id])
    @artist_group = @country.artist_groups.create(artist_group_params)
    
       if @artist_group.save
  		
          redirect_to @artist_group
         else
          render 'new'
         end
    #redirect_to country_path(@country)
  end
  def show
        @artist_group = ArtistGroup.find(params[:id])
    end
     def index
        @artist_group = ArtistGroup.all
    end
   def edit
        @artist_group = ArtistGroup.find(params[:id])
    end
     def update
        @artist_group = ArtistGroup.find(params[:id])
 
       if @artist_group.update(artist_group_params)
         redirect_to @artist_group
       else
         render 'edit'
     end
    end
    def destroy
        @artist_group = ArtistGroup.find(params[:id])
        @artist_group.destroy
 
        redirect_to @artist_group
    end
  private
    def artist_group_params
      params.require(:artist_group).permit(:name, :member_count)
    end
end
