class SectionsController < ApplicationController
  def create
    @interface = Interface.find(params[:interface_id])
    @section = @interface.sections.create(section_params)
    redirect_to interface_path(@interface)
  end

  def destroy
    @interface = Interface.find(params[:interface_id])
    @section = @interface.sections.find(params[:id])
    @section.destroy

    redirect_to :back
  end

  private
    def section_params
      params.require(:section).permit(:name, :plot_count)
    end
end
