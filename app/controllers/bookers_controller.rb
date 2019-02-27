class BookersController < ApplicationController
  
  def top
  end
  
  def index
    @booker = Booker.new
    @bookers = Booker.all
  end

  def show
    @booker = Booker.find(params[:id])
  end
  
  def create
    booker = Booker.new(booker_params)
    if booker.save
      flash[:notice] = "successfully"
      redirect_to booker_path(booker)
    else
      render("bookers")
    end
  end

  def edit
    @booker = Booker.find(params[:id])
  end
  
  def update
    booker = Booker.find(params[:id])
    if booker.update(booker_params)
      flash[:notice] = "successfully"
    redirect_to booker_path(booker)
    else
      render("bookers")
    end
  end
  
  def destroy
    booker = Booker.find(params[:id])
    booker.destroy
    redirect_to bookers_path
  end
  
  
  private
  
  def booker_params
    params.require(:booker).permit(:title, :body)
  end
end
