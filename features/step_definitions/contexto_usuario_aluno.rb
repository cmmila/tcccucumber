require 'pdf-reader'

#cenario_acesso_sistema_aluno
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

  #cenario_eventos_ativos
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
    #titulo_evento3 = find('[href="./?eve=26"]h3').text 
    #puts "Título evento 2 : : #{titulo_evento3}"
    
    sleep(3)
    evento2 = find('[href="./?eve=24"]').hover
    sleep(8)
    titulo_evento2 = find('[href="./?eve=24"] h3').text
    puts "Título evento 2 : #{titulo_evento2}" 

  end

  #cenario download_certificado_aluno
  Quando("acessar o Menu principal selecionando a opção Meus Certificados") do
    #clicando sobre o menu principal
    click_on 'Menu'
     #encontrando elemento que contenha o href descrito e efetuando evento hover sobre ele
    find(:css,'[href="/syseve/inscricoes/?acao=certificados"]').hover
    sleep(3)
    click_on 'Meus Certificados'
  end
  
  Quando("for redirecionado para pagina dos certificados disponíveis") do
    expect(page).to have_current_path('/syseve/inscricoes/?acao=certificados')
    sleep(3)
  end

  Quando("clicar em Gerar Certificado") do
    find(:css, 'a[href="./?acao=gerar_certificado&eve=9"]').click
    sleep(7)
end

  Entao("download do certificado escolhido deverá ser realizado") do
    title = page.all("div.container ") .each do |div_row|
      conteudo_teste = div_row.text
      sleep(2)
      conteudo_teste.each_line do |line|
        if line.include? "Sustentabilidade"
          puts "Baixou o PDF do Evento: #{line}"
        end
    end
    sleep(10)
  end
  downloads = "/Users/camila/Downloads"
    #puts "diretorio"
    if Dir.pwd != downloads
      Dir.chdir( downloads )
    end
      puts "abacaxi"
      puts "#{downloads}"
      arquivospdf = Dir["/Users/camila/Downloads/documento_*.pdf"]
      arquivo_baixado = arquivospdf[0]
      puts "#{arquivo_baixado}"

      PDF::Reader.open("#{arquivo_baixado}") do |reader|
      
      reader.pages.each do |page|
        puts page.text
      end
      end
end
