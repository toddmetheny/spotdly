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

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
