namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    
    if Rails.env.development?
      show_spinner("Apagando Banco de Dados ...") do
        %x(rails db:drop)
      end

      # Outra forma de mandar o parametro do yeld para o spinner equivalente ao do/end
      show_spinner("Criando Banco de Dados ...") { %x(rails db:create) }

      show_spinner("Migrando banco de dados ..."){ %x(rails db:migrate) }

      show_spinner("Populando banco de dados ..."){ %x(rails db:seed) }
    else
      puts "Você não esta no ambiente de desenvolvimento."
    end
  end

  private
  def show_spinner(msg_start, msg_end = "Concluído!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end
end
