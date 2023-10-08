const request = require('supertest')

it('Deve visualizar informações de cadastro, quando buscar por uma pessoa existente', async ()=> {

  const response = await request(`https://swapi.dev/api`).get(`/people/1`);

  expect(response.status).toBe(200);
  expect(response.body.films).toBeDefined();
  expect(response.body.vehicles.length).toBeGreaterThan(0);
  expect(response.body.name).toBe('Luke Skywalker')
});

it('Deve receber uma mensagem de erro, quando buscar por uma pessoa inexistente', async ()=> {
    const response = await request(`https://swapi.dev/api`).get(`/people/999`);

    expect(response.status).toBe(404);
    expect(response.body).toMatchObject({
        detail: 'Not found'
    });
});
