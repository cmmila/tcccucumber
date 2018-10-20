Quando("acessar a url") do
  #visitar a url passada por parametro
   visit('http://painel.passofundo.ifsul.edu.br')
   #esperando 20 segundos na tela
   sleep(20)
  end
  
  Entao("eu verifico que estou na pagina certa") do
    #verificando se a pagina atual contem o caminho passado por parametro
    expect(page).to have_current_path('/')
  end