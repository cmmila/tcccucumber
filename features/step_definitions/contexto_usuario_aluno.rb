#acesso_sistema_aluno
Quando("clicar no icone do sistema de eventos") do
  #encontrando o elemento  com id=sysEve e clicando nele 
    find_by_id("sysEve").click
    #esperando 5 segundos na tela 
    sleep(5)
  end
  
  Entao("devo ser redirecionado para pagina do sistema") do
    #econtrando o elemento com id=nome-sistema e clicando nele 
    #declarando a variavel titulo_sistema para receber o texto desse elemento
    titulo_sistema = find_by_id('nome-sistema').click
    titulo_sistema = find_by_id('nome-sistema').text
    #imprimindo a mensagem de sistema exibido concatenando a variavel a mensagem
    puts "Sistema exibido: #{titulo_sistema}"
    #verificando se o texto armazenado na variavel titulo_sistema é igual com titulo descrito 
    expect(titulo_sistema).to eql 'Sys{Eve} (Sistema de Inscrições em Eventos)'
    sleep(5)
  end

  Dado("que cliquei no icone do Sys Eve") do
    #encontrando elemento por seu id=sysEve e clicando nele
    find_by_id('sysEve').click
  end

  Quando("for direcionado para a pagina do sistema de eventos - Sys Eve") do
    sleep(3)
   #verificando se a pagina atual contem o caminho passado por parametro
    expect(page).to have_current_path('/syseve/eventos/')
    #declarando a variavel titulo e atribuindo a ela o valor pego
    # pelo h3 sendo este igual ao texto descrito
    titulo = first(:css,'div [class="destaques"] h3').text
    sleep(5)
    puts "#{titulo}"
  end
  
  Então("devo visualizar os eventos ativos") do
    #encontrando elemento que contenha o href descrito e efetuando evento hover sobre ele
    evento1 = find('[href="./?eve=27"]').hover
    sleep(8)
    titulo_evento1 = find('[href="./?eve=27"] h3').text 
    puts "Título evento 1 : #{titulo_evento1}"
    
    #evento2 = find('[href="./?eve=26"]').hover
    #sleep(8)
    #titulo_evento2 = find('[href="./?eve=26"]h3').text 
    #puts "Título evento 2 : : #{titulo_evento2}"
    
    sleep(3)
    evento3 = find('[href="./?eve=24"]').hover
    sleep(8)
    titulo_evento3 = find('[href="./?eve=24"] h3').text
    puts "Título evento 3 : #{titulo_evento3}" 

  end