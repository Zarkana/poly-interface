class ItemsController < ApplicationController
  respond_to :js, :json, :html

  def create
    @interface = Interface.find(params[:item][:interface_id])
    @section = Section.find(params[:section_id])
    @item = @section.items.create(item_params)
    redirect_to interface_path(@interface)
  end

  def update
    @interface = Interface.find(params[:interface_id])
    @section = @interface.sections.find(params[:section_id])
    @item = @section.items.find(params[:id])
    @item.update_attributes(item_params)
    respond_with @interface
  end

  def destroy
    @interface = Interface.find(params[:interface_id])
    @section = @interface.sections.find(params[:section_id])
    @item = @section.items.find(params[:id])
    @item.destroy

    redirect_to :back
  end

  private
    def item_params
      params.require(:item).permit(:id, :name, :section_id)
    end
end
