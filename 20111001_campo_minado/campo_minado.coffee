class CampoMinado
  
  constructor: (@mapa) ->
    @size_x = @mapa.length
    @size_y = @mapa[0].length
    
  init_resultado: ->
    resultado = @mapa
    tamanho_x = (@size_x - 1)
    tamanho_y = (@size_y - 1)
    for x in [0..tamanho_x]
      for y in [0..tamanho_y]
        if @mapa[x][y] == '-'
          resultado[x][y] = 0
    
    return resultado

  par_valido: (par) ->
    (par[0] >= 0 and par[0] < @size_x) and (par[1] >= 0 and par[1] < @size_y)
  
  calcular_resultado: ->
    resultado = @init_resultado()
    tamanho_x = @size_x - 1
    tamanho_y = @size_y - 1
    
    for x in [0..tamanho_x]
      for y in [0..tamanho_y]
        if resultado[x][y] == '*'
          lista_pares_possiveis = [
            [x-1, y-1],
            [x-1, y  ],
            [x-1, y+1],
            [x , y-1],
            [x , y+1],
            [x+1, y-1],
            [x+1, y  ],
            [x+1, y+1]
          ]
                
          for par in lista_pares_possiveis
            if @par_valido(par)
              if @mapa[par[0]][par[1]] != '*'
                resultado[par[0]][par[1]]++

    resultado

exports.CampoMinado = CampoMinado
