module AttractionsHelper

  def current_attraction
    @attraction = Attraction.find_by_id(params[:id])
    
  end
end
