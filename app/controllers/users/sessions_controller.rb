class Users::SessionsController < Devise::SessionsController
  respond_to :json

  skip_before_action :authenticate_user!

  private

  def respond_with(resource, _opts = {})
    render json: {
      user: UserSerializer.new(resource).serializable_hash[:data][:attributes],
      token: request.env["warden-jwt_auth.token"]
    }, status: :ok
  end

  def respond_to_on_destroy
    if current_user
      render json: { message: "Logout realizado com sucesso" }, status: :ok
    else
      render json: { message: "Token inválido ou já expirado" }, status: :unauthorized
    end
  end
end
