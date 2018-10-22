Quando("preencher o campo usuario com usuario Professor") do
    fill_in(name:'usuario', with: 'email@passofundo.ifsul.edu.br')
  end
  
  Quando("preencher o campo senha com a senha do usuario Professor") do
    fill_in(name:'senha', with: 'senha')
  end
  
  #cenario_cadastro_evento_professor
  Dado("que selecionei o cadastro de um novo Evento") do
    #clicando no icone do sistema de eventos
    find_by_id('sysEve').click
    sleep(5)
    #visitando a url passada por parametro a partir da default configura no arquivo env.rb
    visit('/syseve/eventos/?acao=incluir')
    sleep(2)
  end
  
  Quando("preencher o campo Nome do Evento") do
    fill_in(name:'nome' , with:'evento teste') 
    sleep(2)
  end
  
  Quando("preencher o campo Data Início do evento") do
    puts "testando data"
    fill_in(name:'data_inicio' , with:'/21/10/2018/')
    sleep(3)
    
  end
  
  Quando("preencher o campo Data Fim do evento") do
    fill_in(name:'data_fim' , with:'/01/12/2018/')
    sleep(2)
  end
  
  Quando("fazer upload da imagem do evento") do
    @imagem = File.join(Dir.pwd, 'features/logoif.png')
    attach_file('img', @imagem)
    sleep(5)
  end
  
  Quando("peencher a Data de Início das Incrições") do
    fill_in(name:'data_inicio_inscricao' , with:'/21/10/2018/')
    sleep(3)
  end
  
  Quando("preencher a Data Fim das Incrições") do
    fill_in(name:'data_fim_inscricao' , with:'/01/12/2018/')
    sleep(3)
  end
  
  Quando("selecionar um Responsável pela Assinatura do comprovante de participação") do
    #selecionando a opcao passada por parametro do select com name = assinatura_id
    select 'Juliana Favretto' , from: 'assinatura_id'
    sleep(5)
  end
  
  Quando("preencher a  Data da Disponibilização do comprovante de participação") do
    fill_in(name:'data_comprovante' , with:'/10/12/2018/')
    sleep(6)
  end
  
  Quando("preencher a Descrição da Assinatura do comprovante de participação") do
    fill_in(name:'assinatura_descricao' , with:'descricao teste')
    sleep(6)
  end
  
  Quando("clicar em Gravar") do
    sleep(8)
    click_on 'Gravar'
    sleep(5)
  end
  
  Entao("o Evento deverá ser cadastrado com sucesso") do
    pending # Write code here that turns the phrase above into concrete actions
  end