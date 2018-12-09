Quando("preencher o campo usuario com usuario Professor") do
  #preenchendo o campo usuario com o usuario passado por parametro
    fill_in(name:'usuario', with: 'xxx')
    sleep(2)
  end
  
  Quando("preencher o campo senha com a senha do usuario Professor") do
    #preenchendo o campo senha com a senha passada por parametro
    fill_in(name:'senha', with: 'xxx')
    sleep(2)
  end
  
  #cenario_cadastro_evento_professor
  Dado("que selecionei o cadastro de um novo Evento") do
    #clicando no icone do sistema de eventos
    find_by_id('sysEve').click
    sleep(4)
    #visitando a url passada por parametro a partir da default configura no arquivo env.rb
    visit('/syseve/eventos/?acao=incluir')
    sleep(2)
  end
  
  Quando("preencher o campo Nome do Evento") do
    #preenchendo o campo Nome do Evento com o nome do evento que será cadastrado
    fill_in(name:'nome' , with:'Formatura TSPI- 2018/2') 
    sleep(2)
  end
  
  Quando("preencher o campo Data Início do evento") do
    #preenchendo o campo Data Início com a data do evento que será cadastrado 
    fill_in(name:'data_inicio' , with:'/21/10/2018/')
    sleep(5)
    
  end
  
  Quando("preencher o campo Data Fim do evento") do
    #preenchendo o campo Data Fim com a data do evento que será cadastrado 
    fill_in(name:'data_fim' , with:'/23/02/2019/')
    sleep(2)
  end
  
  Quando("fazer upload da imagem do evento") do
    #declarando a variavel imagem para receber o diretorio atual concatenando com o caminho passado por parametro 
    @imagem = File.join(Dir.pwd,'features/formatura2018.jpg')
    #preenchendo o campo imagem (identificado pelo type=file e o name=img ) com a imagem contida variavel imagem
    attach_file('img', @imagem)
    sleep(5)
  end
  
  Quando("peencher a Data de Início das Incrições") do
    #preenchendo o campo Data Início com a data do evento que será cadastrado 
    fill_in(name:'data_inicio_inscricao' , with:'/21/10/2018/')
    sleep(3)
  end
  
  Quando("preencher a Data Fim das Incrições") do
    #preenchendo o campo Data Fim com a data do evento que será cadastrado 
    fill_in(name:'data_fim_inscricao' , with:'/23/02/2019/')
    sleep(3)
  end
  
  Quando("selecionar um Responsável pela Assinatura do comprovante de participação") do
    #selecionando a opcao passada por parametro do select com name = assinatura_id
    select 'Juliana Favretto' , from: 'assinatura_id'
    sleep(5)
  end
  
  Quando("preencher a  Data da Disponibilização do comprovante de participação") do
    #preenchendo o campo Data da Disponibilização com a data do evento que será cadastrado 
    fill_in(name:'data_comprovante' , with:'/01/12/2018/')
    sleep(5)
  end
  
  Quando("preencher a Descrição da Assinatura do comprovante de participação") do
    sleep(4)
    find(:css, 'input[name="assinatura_descricao"]').click
    sleep(2)
    #preenchendo o campo Descrição da Assinatura com o valor passado por parametro 
    fill_in(name:'assinatura_descricao' , with:'Formatura TSPI')
    sleep(3)
    #preenchendo o campo Formador (para cursos de extensão) com o valor passado por parametro 
    fill_in(name:'formador' , with:'formador teste')
    sleep(5)
  end
  
  Quando("clicar em Gravar") do
    sleep(2)
    #clicando no botao com nome = Gravar
    click_on 'Gravar'
    sleep(8)
  end
  
  Entao("o Evento deverá ser cadastrado com sucesso") do
    sleep(5)
    #pegando o texto contido dentro da div identificada e passada por parametro 
    # e atribuido-o a variavel mensagem_evento
    mensagem_evento = find(:css, 'div [class="alert alert-success"]').text
    sleep(5)
    puts "#{mensagem_evento}"
    #preenchendo o campo Pesquisar com identificado por sua classe com o valor passado por parametro
    fill_in(class:'form-control' , with:'Formatura TSPI- 2018/2')
    sleep(3)
    #verificando se o texto passado por parametro existe na página atual 
    have_text? ('Formatura TSPI- 2018/2')
    sleep(3)
    puts "Evento cadastrado com sucesso"
    sleep(8)
  end
