Dado('que acesso a página de cadastro') do
    @cadastro_page.open
end
  
Quando('submeto o seguinte formulário de cadastro:') do |table|
    @conta = table.rows_hash
    @cadastro_page.create(@conta)
end

Então('sou redirecionado para minha conta') do                               
    pending # Write code here that turns the phrase above into concrete actions
  end                                                                          

