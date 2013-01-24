CampoMinado = require("./campo_minado").CampoMinado

describe 'Um jogo de campo minado', ->
  
  it 'deve retornar tudo zero para um campo sem bomba', ->
    campo = new CampoMinado([
      ['-', '-'], 
      ['-', '-']
    ])
    expect(campo.calcular_resultado()).toEqual([
      [0, 0], 
      [0, 0]
    ])

  it 'deve retornar mapa correto para campo 2x2 com uma bomba', ->
    campo = new CampoMinado([
      ['*', '-'], 
      ['-', '-']
    ])
    expect(campo.calcular_resultado()).toEqual([
      ['*', 1], 
      [1, 1]
    ])

  it 'deve retornar mapa correto para campo 5x5 com 4 bombas', ->
    campo = new CampoMinado([
      ["-", "-", "*", "*", "*"],
      ["*", "-", "-", "-", "-"],
      ["-", "-", "-", "-", "-"],
      ["-", "-", "-", "*", "-"],
      ["-", "-", "-", "-", "-"]
    ])
    expect(campo.calcular_resultado()).toEqual([
      [ 1,  2, "*", "*", "*"],
      ["*", 2,  2,   3,   2],
      [ 1,  1,  1,   1,   1],
      [ 0,  0,  1,  "*",  1],
      [ 0,  0,  1,   1,   1]
    ])
