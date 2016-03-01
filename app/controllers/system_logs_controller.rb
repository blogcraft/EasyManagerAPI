class SystemLogsController < ApplicationController
  before_action :set_system_log, only: [:show, :update, :destroy]

  # GET /system_logs
  def index
    @system_logs = SystemLog.all

    render json: @system_logs
  end

  # GET /system_logs/1
  def show
    render json: @system_log
  end

  # POST /system_logs
  def create
    @system_log = SystemLog.new(system_log_params)

    if @system_log.save
      render json: @system_log, status: :created, location: @system_log
    else
      render json: @system_log.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /system_logs/1
  def update
    if @system_log.update(system_log_params)
      render json: @system_log
    else
      render json: @system_log.errors, status: :unprocessable_entity
    end
  end

  # DELETE /system_logs/1
  def destroy
    @system_log.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_system_log
      @system_log = SystemLog.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def system_log_params
      params.require(:system_log).permit(:type, :message)
    end
end
