class HomePage < SitePrism::Page

    element :productsText, :class, 'title'
    element :cart, :id, 'shopping_cart_container'

    def checkLoginSuccessful
        expect(productsText.text).to eql "Products"
        expect(cart).to be_displayed

end