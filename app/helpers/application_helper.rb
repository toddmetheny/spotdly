module ApplicationHelper
  def show_brand_background
    unless @profile.background_image.blank?
      "background: url(#{@profile.background_image.to_s}) no-repeat fixed left top; 
       max-height: 300px;"
    else
      "background: url('/assets/background.png') no-repeat fixed left top; 
       max-height: 300px;"
    end
  end
end
