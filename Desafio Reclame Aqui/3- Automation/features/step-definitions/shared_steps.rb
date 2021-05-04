Então("sou redirecionado para minha página") do
    expect(@login_page.logado?).to be true
end