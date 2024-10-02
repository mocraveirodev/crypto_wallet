class WelcomeController < ApplicationController
  def index
    @nome = params[:nome] || "Usuário"
  end
end
