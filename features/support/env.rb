require 'cucumber'

require 'capybara/cucumber'

require 'selenium-webdriver'

#inicializando objeto capybara
Capybara.configure do |config|
    #selenium #selenium_chrome #selenium_chrome_healess

    #escolha do drive padrão para rodar os testes
    config.default_driver = :selenium_chrome

    #url padrão para realizar a autmação do site
    config.app_host = 'http://painel.passofundo.ifsul.edu.br'

    #tempo defino de time out para encontrar o elemento na tela 
    config.default_max_wait_time = 15;

end