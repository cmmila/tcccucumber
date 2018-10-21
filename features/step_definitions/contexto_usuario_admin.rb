Quando("preencher o campo usuario com usuario Admin") do
     #preenchendo o campo que contem o name usuario com o identificador passado por parametro 
    fill_in(name:'usuario', with: 'taeteste' )
     sleep(5)
  end
  
Quando("preencher o campo senha com a senha do usuario Admin") do
   #preenchendo o campo que contem o name senha com a senha passada por parametro 
   fill_in(name:'senha', with: 'senha')
   sleep(5)
  end

  #cenario_validar_inscricao_admin
  Dado("que acessei o Sistema de Incrições em Eventos") do
    #encontrando o elemento  com id=sysEve e clicando nele 
    find_by_id("sysEve").click
  end
  
  Dado("selecionei um evento") do
    #encontrando elemento que contenha o href descrito e efetuando evento hover sobre ele
    find('[href="./?eve=24"]').hover
    sleep(8)
    find('[href="./?eve=24"]').click
    sleep(3)
  end
  
  Quando("acessar o menu principal") do
    click_on 'Menu'
    sleep(8)
  end
  
  Quando("clicar em Minhas Incrições") do
    find(:css,'[href="/syseve/inscricoes/?acao=minhas"]').hover
    sleep(5)
    find(:css, '[href="/syseve/inscricoes/?acao=minhas"]').click
    sleep(15)
  end
  
Entao("devo visualizar as incrições que realizei no evento") do
    #percorrendo toda a pagina procurando a classe panel body e para cada div 
    page.all(:css, '[class="panel-body"]').each do |div|
      
      #pegando o conteudo de texto dessa div e armazenando na variavel conteudo
      conteudo_div = div.text
      #percorrendo cada linha do conteudo inteiro armazenado
      conteudo_div.each_line do |line|

        #se a linha encontrada inclui a palavra Segunda
        if line.include? "Segunda"
          puts "Dia: #{line}"
        end

        #se a linha encontrada inclui a palavra Terça
        if line.include? "Terça"
          puts "Dia: #{line}"
        end

        #se a linha encontrada inclui a palavra Quarta
        if line.include? "Quarta"
          puts "Dia: #{line}"
        end
        
        #se a linha encontrada inclui a palavra Atividade
        if line.include? "Atividade"
          puts "#{line}" 
        end

        #se a linha encontrada inclui a palavra Ministrante(s)
        if line.include? "Ministrante(s):"
          puts "#{line}"
        end
      end
    end
  end

  


