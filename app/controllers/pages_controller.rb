class PagesController < ApplicationController
  expose(:pages){ Page.all }
  expose(:page, attributes: :page_params)

  def create
    if page.save
      redirect_to root_path
    else
      render :new
    end
  end
  def update
    if page.save
      redirect_to root_path
    else
      render :edit
    end
  end
  private
  def page_params
    params.require(:page).permit(
      :name,
      :content,
      :position,
    )
  end
end

