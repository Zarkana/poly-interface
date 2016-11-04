class InterfacesController < ApplicationController
  def index
    @interfaces = Interface.all
  end

  def show
    @interface = Interface.find(params[:id])
  end

  def new
     @interface = Interface.new
  end

  def edit
    @interface = Interface.find(params[:id])
  end

  def create
    @interface = Interface.new(interface_params)

    @interface.save
    redirect_to @interface
  end

  def update
    @interface = Interface.find(params[:id])

    if @interface.update(interface_params)
      redirect_to @interface
    else
      render 'edit'
    end
  end

  def destroy
    @interface = Interface.find(params[:id])
    @interface.destroy

    redirect_to interfaces_path
  end

  private
    def interface_params
      params.require(:interface).permit(:name)
    end
end
