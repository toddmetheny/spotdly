class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  # GET /profiles
  # GET /profiles.json
  def index
    if params[:tag]
      @profiles = Profile.tagged_with(params[:tag].downcase)
    else
      @profiles = Profile.all #where(:is_public => true)
    end
    @tags = ActsAsTaggableOn::Tag.order("name")
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    unless current_user && current_user.id == @profile.user_id
      if @profile.is_public == false
        redirect_to root_path
      end
    end
    @comment = Comment.new
  end

  # GET /profiles/new
  def new
    if current_user
      @profile = Profile.new
    else
      redirect_to new_user_registration_path
    end
  end

  # GET /profiles/1/edit
  def edit
    unless current_user && (current_user.id == @profile.user_id || current_user.admin)
      redirect_to root_path
    end
  end

  # POST /profiles
  # POST /profiles.json
  def create

    @profile = Profile.new(profile_params)
    if current_user
      @profile.user_id = current_user.id
    end

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }

      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def match
    @profile = Profile.find(params[:id])
    @profile.liked_by current_user
    redirect_to @profile
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:company_name, :description, :user_position, :type_of_business, :category, :city, :state, :logo, :background_image, :twitter, :facebook, :instagram, :url, :long_description, :brand_idea, :slogan, :hashtag, :is_public, :tag_list)
    end
end
