class WelcomeController < ApplicationController
  def index
    @nome = params[:nome] || I18n.t('default_name')
  end
end
