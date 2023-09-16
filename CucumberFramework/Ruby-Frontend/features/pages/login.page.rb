class LoginPage < SitePrism::Page

    set_url ''
    element :usernameField, '#user-name'
    element :passwordField, '#password'
    element :loginButton, '#login-button'

    def userLogin(username, password)
        usernameField.set (username)
        passwordField.set (password)
        loginButton.click
    end

end