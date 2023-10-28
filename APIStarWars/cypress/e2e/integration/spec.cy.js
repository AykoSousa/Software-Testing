describe("Teste da API do Star Wars", () => {
  it("Deve listar pessoas", () => {
    cy.request("api/people")
      .should((response) => {
        expect(response.status).to.eq(200);
        expect(response.body.results).to.have.length.greaterThan(0);
      });
  });

  it("Deve consultar uma pessoa por ID", () => {
    cy.request("api/people/1")
      .should((response) => {
        expect(response.status).to.eq(200);
        expect(response.body.name).to.eq("Luke Skywalker");
      });
  });

  it("Deve listar planetas", () => {
    cy.request("api/planets")
      .should((response) => {
        expect(response.status).to.eq(200);
        expect(response.body.results).to.have.length.greaterThan(0);
      });
  });

  it("Deve consultar um planeta por ID", () => {
    cy.request("api/planets/1")
      .should((response) => {
        expect(response.status).to.eq(200);
        expect(response.body.name).to.eq("Tatooine");
      });
  });

  it("Deve listar naves espaciais", () => {
    cy.request("api/starships")
      .should((response) => {
        expect(response.status).to.eq(200);
        expect(response.body.results).to.have.length.greaterThan(0);
      });
  });

  it("Deve consultar uma nave espacial por ID", () => {
    cy.request("api/starships/9")
      .should((response) => {
        expect(response.status).to.eq(200);
        expect(response.body.name).to.eq("Death Star"); 
      });
  });

  it("Deve retornar 404 ao consultar um recurso inexistente", () => {
    cy.request({
      url: "api/people/999",
      failOnStatusCode: false,
    }).should((response) => {
      expect(response.status).to.eq(404);
    });
  });

  it("Deve filtrar pessoas por nome", () => {
    cy.request("api/people/?search=Skywalker")
      .should((response) => {
        expect(response.status).to.eq(200);
        expect(response.body.results).to.have.length.greaterThan(0);
        response.body.results.forEach((person) => {
          expect(person.name).to.include("Skywalker");
        });
      });
  });
});
