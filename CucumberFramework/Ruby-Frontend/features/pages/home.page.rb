class HomePage < SitePrism::Page

    element :productsText, '.title'

    def checkLoginSuccessful
        expect(productsText.text).to eql "Products"
    end
end