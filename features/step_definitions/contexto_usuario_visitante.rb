Quando("preencher o campo usuario com usuario visitante") do
  #preenchendo o campo que contem o name usuario com o email passado por parametro 
  fill_in(name:'usuario', with: 'vteste') 
  sleep(5)
end

Quando("preencher o campo senha com a senha do usuario visitante") do
  #preenchendo o campo que contem o name senha com a senha passada por parametro 
  fill_in(name:'senha', with: 'senha')
  sleep(5)
end

#@inscricao_evento_visitante
Dado("que escolhi um determinado evento") do
  #encontrando o elemento  com id=sysEve e clicando nele 
  find_by_id('sysEve').click
  #esperando 3 segundos na tela 
  sleep(3)
  #encontrando o elemento que contenha o href passaod por parametro e clicando nele
  find('[href="./?eve=24"]').click
  sleep(10)
end

Quando("for redirecionado para a página de incrições abertas") do
  #comparando se a pagina esperada contem o caminho atual passado por parametro
  expect(page).to have_current_path('/syseve/inscricoes/')
  #declarando uma variavel nome_evento 
  # e guardando nela o texto do primeiro h2
  nome_evento = first(:css, 'h2').text
  # imprimindo na tela o nome do evento guardado
  puts"Evento: #{nome_evento}"
end

Quando("escolher uma atividade para me cadastrar") do
  #encontrando o elemento pelo atributo data-target
  find('[data-target="#myModal249"]').click
  sleep(5)
  nome_atividade = find(:css,'[id="myModalLabel249"]').text
  puts "Atividade inscrita: #{nome_atividade}"
  sleep(15)
  #clicando no botão com nome Fechar
  click_button 'Fechar'
  sleep(3)
end

Quando("realizar inscrição nesta atividade") do
  #encontrando o elemento que contenha o input passado por parametro e efetuando click
  find('input[value="249"]').click
  sleep(3)
  find('input[value="Realizar Inscrição"]').click
  sleep(5)
end

Entao("meu codigo de participante no evento deve ser exibido") do
  click_on 'Minhas Inscrições'
  sleep(10)
  #capturando o texto de dentro do atributo code e guardando-o na variavel codigo
  codigo = find('code').text
  #imprimindo o texto guardado na variavel codigo
  puts "Número Código: #{codigo}"
end