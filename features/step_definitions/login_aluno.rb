Dado("que estou na pagina de login") do
    #acessando a url default setada no arquivo env.rb 
    #configurada em config.app_host
    visit('/')
    #esperando 5 segundos na tela
    sleep(5)
  end
  
  Quando("preencher o campo usuario com usuario aluno") do
    #preenchendo o campo que contem o name usuario com o email passado por parametro 
    fill_in(name:'usuario', with: 'email@hotmail.com') 
    sleep(5)
  end
  
  Quando("preencher o campo senha com a senha do usuario aluno") do
    #preenchendo o campo que contem o name senha com a senha passada por parametro 
    fill_in(name:'senha', with: 'teste12345')
    sleep(5)
  end

  Quando("clicar no botão entrar") do
    #encontrando o elemnto input com value=entrar e clicando nele
    find('input[value="Entrar"]').click
    #esperando 5 segundos na tela
    sleep(5)
  end
  
  Entao("login do usuario deve ser realizado com sucesso") do
    #atribuindo valor da classe da div a variavel mensagem_sucesso
    #e pegando o texto guardado nesta variavel 
    mensagem_sucesso = find('div[class="alert alert-success"]').text
    #imprimindo texto pego no cenario
    puts "mensagem: #{mensagem_sucesso}"
    #esperando 5 segundos na tela
    sleep(5)
  end
