module ApplicationHelper
  def date_format_br(date_us)
    date_us.strftime("%d/%m/%Y")
  end

  def env_rails_version
    if Rails.env.development?
      "Desenvolvimento"
    elsif Rails.env.test?
      "Teste"
    else
      "Produção"
    end
  end
end
