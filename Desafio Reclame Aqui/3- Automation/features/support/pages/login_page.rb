class LoginPage
    include Capybara::DSL

    def open
        visit "/login"
    end

    def with(email, password)
        find("input[placeholder='Seu e-mail, usuário ou CPF/CNPJ']").set email
        find("input[id=password]").set password
        click_button "Entrar"
    end

    def logado?
        return page.has_css?(".user-name")
    end

    def error
        return find(".alert-error").text
    end
end

