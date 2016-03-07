class Admin::TidingsController < AdminController
  load_and_authorize_resource

  def new
    @tiding = Tiding.new
  end

  def create
    @tiding = Tiding.new(tiding_params)

      if @tiding.save
        redirect_to root_path
      else
        render "new"
      end
  end

  def show
    @tiding = Tiding.find(params[:id])
  end

    private

    def tiding_params
      params.require(:tiding).permit(:id, :text, :title, :main, {photos: []})
    end
end
