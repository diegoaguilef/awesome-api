class ClientsController < ApplicationController

  before_action :set_client, only: %i(show update destroy)
  def show
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def set_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require.(:client).permit(:name, :email, :city, :commune, :rut, :giro, :phone, :cell_phone)
  end
end
