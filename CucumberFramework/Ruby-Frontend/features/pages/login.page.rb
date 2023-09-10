class LoginPage < SitePrism::Page

    set_url ''
    element :usernameField, :id, 'user-name'
    element :passwordField, :id, 'password'
    element :loginButton, :id, 'login-button'

    def userLogin(username, password)
        usernameField.set(username)
        passwordField.set(password)
        loginButton.click
    end

end