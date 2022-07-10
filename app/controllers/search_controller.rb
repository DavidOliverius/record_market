class SearchController < ApplicationController
  
  def index
    # Ransack gem searches for through specific table columns (specififed in view) for search results
    @query = Listing.ransack(params[:q])
    @listings = @query.result(distinct: true)
  end
end
 