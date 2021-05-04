class CadastroPage
    include Capybara::DSL

    def open
        visit "/cadastro/consumidor"
    end

    def create(signup)
        find("input[placeholder='Digite seu nome']").set signup[:nome]
        find("input[name='birthdate']").set signup[:data]
        find("input[name='cpf']").set signup[:cpf]
        select_gen(signup[:genero])
        select_state(signup[:estado])
        select_city(signup[:cidade])
        find("input[name='number']").set signup[:celular]
        find("input[placeholder='Digite seu e-mail']").set signup[:email]
        find("input[name='password']").set signup[:senha]
        find("input[name='passwordConfirm']").set signup[:confirmar]
        page.check('aceptPrivacyPolicy')
        page.check('aceptTerms')
        click_button "cadastrar"
    end

    def select_gen(masc)
        find("#gender").click
        find("#ui-select-choices-row-0-1").click
    end

    def select_state(ba)
        find("#state").click
        find("#ui-select-choices-row-1-4").click
    end

    def select_city(sal)
        find("#city").click
        find("#ui-select-choices-row-2-0").click
    end
end

