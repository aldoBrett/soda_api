# class Api::SessionsController < Api::ApiController
class Api::SessionsController < Devise::SessionsController
  # respond_to :json
  def create
    # render json: params
    super do |user|
      render json: user and return
    end
  end

  def resource_name
    :user
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
