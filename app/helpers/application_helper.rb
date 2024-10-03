module ApplicationHelper
  def locale
    I18n.locale == :en ? I18n.t("lang.en") : I18n.t("lang.pt-BR")
  end
  def date_format_br(date_us)
    date_us.strftime("%d/%m/%Y")
  end

  def env_rails_version
    if Rails.env.development?
      I18n.t("env.dev")
    elsif Rails.env.test?
      I18n.t("env.test")
    else
      I18n.t("env.prod")
    end
  end
end
