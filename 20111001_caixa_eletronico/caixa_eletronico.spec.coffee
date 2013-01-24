CaixaEletronico = require('./caixa_eletronico').CaixaEletronico

describe "Um caixa eletrônico infinito", ->

  beforeEach ->
    @caixa = new CaixaEletronico

  it 'para saque 30 deve retornar [0, 0, 1, 1]', ->
    expect(@caixa.saque(30)).toEqual([0, 0, 1, 1])

  it 'para saque 80, deve retornar [0, 1, 1, 1]', ->
    expect(@caixa.saque(80)).toEqual([0, 1, 1, 1])

  it 'para saque 200 deve retornar [2, 0, 0, 0]' , ->
    expect(@caixa.saque(200)).toEqual([2, 0, 0 ,0])

  it 'para saque 260 deve retornar alguma coisa' , ->
    expect(@caixa.saque(260)).toEqual([ 2, 1, 0, 1 ])

  it 'para saque 203 deve retornar "Somente notas de 100, 50, 20 e 10"' , ->
    expect(@caixa.saque(203)).toEqual("Somente notas de 100, 50, 20 e 10")

  it 'para saque 45664 deve retornar "Somente notas de 100, 50, 20 e 10"' , ->
    expect(@caixa.saque(45664)).toEqual("Somente notas de 100, 50, 20 e 10")

  it 'para saque -890 deve retornar "Somente notas de 100, 50, 20 e 10"', ->
    expect(@caixa.saque(-890)).toEqual("Somente notas de 100, 50, 20 e 10")

describe "Um caixa eletronico finito", ->

  it 'para saque 200 sem notas de 100 deve retornar [0, 4, 0, 0]', ->
    expect(new CaixaEletronico([0,10,10,10]).saque(200)).toEqual([0, 4, 0, 0])

  it 'para saque 200 com 1 nota de 100 e duas de 50 deve retornar [1, 2, 0, 0]', ->
    expect(new CaixaEletronico([1,10,10,10]).saque(200)).toEqual([1, 2, 0, 0])

  it 'para saque dois saques de 200 com 2 notas de 100 deve retornar [0, 4, 0, 0] no segundo', ->
    caixa = new CaixaEletronico([2,10,10,10])
    caixa.saque(200)
    expect(caixa.saque(200)).toEqual([0, 4, 0, 0])
