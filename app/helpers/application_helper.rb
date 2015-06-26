module ApplicationHelper
  def show_brand_background
    "background: url(#{@profile.background_image.to_s}) no-repeat fixed left top;
    max-height: 300px;"
  end
  def show_brand_background_thumbnail
    "background: url(#{@profile.background_image.to_s}) no-repeat;
    max-height: 150px;"
  end
end
