class SettingsController < ApplicationController
before_action :set_user, only: [:index, :bulk_update]

  def index
    settings = Setting.joins("LEFT JOIN user_settings ON settings.id = user_settings.setting_id")
      .where('user_settings.user_id = ? or user_settings.user_id is null', @user.id)
      .select('settings.id, user_settings.value, settings.name')

    render json: settings
  end

  def bulk_update
    data = params[:data]
    data.each do |s|
      set = UserSetting.where(user_id: @user.id).where(setting_id: data[s]['id']).take
      if set != nil
        set.value = data[s]['value']
        set.save()
      else
        set = UserSetting.new(user_id: @user.id, setting_id: data[s]['id'], value: data[s]['value'])
        set.save()
      end
    end

    render json: params[:data]
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find_by_id(1)
    end
end
