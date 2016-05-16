class UsersController < ApplicationController
before_action :set_user, only: [:show, :update]

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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find_by_id(current_user.id)
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:data).permit(attributes:[ :first_name, :last_name, :email, :profession])
    end
end
