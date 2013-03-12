class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
  end

  def create
    client = Client.create(params[:client])
    redirect_to clients_path
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    client = Client.find(params[:id])
    if client.update_attributes(params[:client])
      redirect_to clients_path, :notice => "Client updated" 
    else
      redirect_to clients_path, :notice => "Unable to update the client"
    end    
  end

  def destroy
    client = Client.find(params[:id])
    client.destroy
    redirect_to clients_path, :notice => "Client has been deleted successfully."
  end
end
