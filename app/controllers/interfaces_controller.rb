class InterfacesController < ApplicationController
  def show
    @interface = Interface.find(params[:id])
  end

  def new
  end

  def create
    @interface = Interface.new(interface_params)

    @interface.save
    redirect_to @interface
  end

  private
    def interface_params
      params.require(:interface).permit(:name)
    end
end
