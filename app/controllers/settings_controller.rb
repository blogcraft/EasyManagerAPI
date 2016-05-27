class SettingsController < ApplicationController
  before_action :set_setting, only: [:show]
  # GET /settings
  def index
    @setting = Setting.for_user(current_user).first

    if @setting == nil
      @setting = Setting.new()
      @setting.user_id = current_user.id
      @setting.save()
    end

    render json: @setting
  end

  # GET /settings/1
  def show
    render json: @setting
  end

  # PATCH/PUT /settings/1
  def update
    @setting = Setting.find(params[:id])
    if @setting.update(setting_params)
      render json: @setting
    else
      render json: @setting.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_setting
      @setting = Setting.for_user(current_user).find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def setting_params
      params.require(:data).permit(attributes:[ :date_price])
    end
end
