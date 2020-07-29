class ClientsController < ApplicationController

    def index
        @clients = Client.all
    end

    def show
        @client = Client.find(params[:id])
    end

    def new
        @client = Client.new
        @errors = flash[:errors]
    end

    def create
        client = Client.create(client_params)
        if client.valid?
          flash[:notice] = "Welcome to your homepage"
          redirect_to client
        else
          flash[:errors] = client.errors.full_messages
          redirect_to new_client_path
        end
    end

    def edit
      @client = Client.find(params[:id])
    end

    def update
      client = Client.find(params[:id])
      client.update(client_params)
      redirect_to client_path(client)
    end

    private

    def client_params
        params.require(:client).permit(:name, :age)
    end
end
