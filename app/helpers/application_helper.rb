module ApplicationHelper
  def show_brand_background
    "background: url(#{@profile.background_image.to_s}) no-repeat fixed left top;
    max-height: 300px;"
  end
  def show_brand_background_thumbnail
    @profile.background_image(:thumb)
  end
end
