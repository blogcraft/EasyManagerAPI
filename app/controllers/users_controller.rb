class UsersController < ApplicationController
before_action :set_user, only: [:show, :update, :settings]

  # GET /users/1
  def show
    render json: @user
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def settings
    #settings = Setting.joins("LEFT JOIN user_settings ON settings.id = user_settings.setting_id")
    #  .where('user_settings.user_id = ? or user_settings.user_id is null', @user.id)
    #  .select('settings.id, user_settings.value, settings.name')

    data = {"data":[{"id":"1","type":"settings","attributes":{"name":"Campo","value":"1000"}}]}

    render json: data
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find_by_id(current_user.id)
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:data).permit(attributes:[ :name, :last_name, :email, :profession])
    end
end
