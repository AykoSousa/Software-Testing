/// <reference types="cypress"/>

import { format, prepareLocalStorage } from "../support/utils";

context("Dev Finances Agilizei", () => {
  beforeEach(() => {
    cy.visit("/", {
      onBeforeLoad: (win) => {
        prepareLocalStorage(win);
      },
    });
  });

  it("Deve ser possível cancelar nova transação", () => {
    cy.get("#transaction .button").click();
    cy.get("#form .button.cancel").click();
    cy.get(".modal").should("be.hidden");
  });

  it("Cadastro de entradas", () => {
    cy.get("#transaction .button").click();
    cy.get("#description").type("Mesada");
    cy.get("[name=amount]").type(12);
    cy.get("#date").type("2023-07-20");
    cy.get("button").contains("Salvar").click();

    cy.get("#data-table tbody tr").should("have.length", 3);
  });

  it("Cadastrar saídas", () => {
    cy.get("#transaction .button").click();
    cy.get("#description").type("Suco de Laranja");
    cy.get("[name=amount]").type(-12);
    cy.get("#date").type("2023-07-20");
    cy.get("button").contains("Salvar").click();
  });

  it("Verificar se campo de valor aceita somente números", () => {
    cy.get("#transaction .button").click();
    cy.get("[name=amount]").type("ABCD", { force: true }).should("be.empty");
  });

  it("Remover entradas e saídas", () => {
    cy.get("td.description")
      .contains("Mesada")
      .parent()
      .find("img[onclick*=remove]")
      .click();

    cy.get("td.description")
      .contains("Suco Kapo")
      .parent()
      .find("img[onclick*=remove]")
      .click();

    cy.get("#data-table tbody tr").should("have.length", 0);
  });

  it("Validar saldo com base nas transações", () => {
    let incomes = 0;
    let expenses = 0;

    cy.get("#data-table tbody tr").each(($el, index, $list) => {
      cy.get($el)
        .find("td.income, td.expense")
        .invoke("text")
        .then((text) => {
          if (text.includes("-")) {
            expenses = expenses + format(text);
          } else {
            incomes = incomes + format(text);
          }
        });
    });
    cy.get("#totalDisplay")
      .invoke("text")
      .then((text) => {
        let formattedTotalDisplay = format(text);
        let expextedTotal = incomes + expenses;

        expect(formattedTotalDisplay).to.eq(expextedTotal);
      });
  });
});
