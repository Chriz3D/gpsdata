class TracksController < ApplicationController
  def index
      @tracks = Track.all
   end
   
   def new
      @track = Track.new
   end
   
   def create
      @track = Track.new(track_params)
      
      if @track.save
         redirect_to tracks_path, notice: "Successfully uploaded."
      else
         render "new"
      end
      
   end
   
   def destroy
      @track = Track.find(params[:id])
      @track.destroy
      redirect_to tracks_path, notice:  "Successfully deleted."
   end
   
   private
      def track_params
      params.require(:track).permit(:name, :attachment)
   end
end
