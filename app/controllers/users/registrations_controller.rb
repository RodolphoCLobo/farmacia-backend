class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  skip_before_action :authenticate_user!

  private

  def sign_up(resource_name, resource)
    # Override vazio, impede que Devise faça sign_in
  end

  def respond_with(resource, _opts = {})
    if resource.persisted?
      render json: {
        user: UserSerializer.new(resource).serializable_hash[:data][:attributes]
      }, status: :ok
    else
      render json: { errors: resource.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def respond_to_on_destroy
    head :no_content
  end
end
