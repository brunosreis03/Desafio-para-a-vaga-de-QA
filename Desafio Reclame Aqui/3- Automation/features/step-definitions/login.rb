Dado('que acesso a página de login') do
    @login_page.open
end
  
Quando('submeto minhas credenciais com {string} e {string}') do |email, password|
    @login_page.with(email, password)
end

Então('vejo a mensagem de alerta: {string}') do |mensagem|
    expect(@login_page.error).to eql mensagem
  end