class CaixaEletronico
  constructor: (quantidade_notas_disponiveis) ->
    @quantidade_notas_disponiveis = quantidade_notas_disponiveis || null
    @notas_disponiveis = [100, 50, 20, 10]

  
  menor: (numero1, numero2) ->
    if numero1 < numero2
      numero1
    else
      numero2

  
  sacarNotasDe: (valor, indice) ->
    notas_desejadas = parseInt(valor / @notas_disponiveis[indice])

    if @quantidade_notas_disponiveis == null
      notas_desejadas
    else
      quantidade_de_notas = @menor(@quantidade_notas_disponiveis[indice], notas_desejadas)
      @quantidade_notas_disponiveis[indice] -= quantidade_de_notas
      quantidade_de_notas

  saque: (valor) ->
    notas = [0, 0, 0, 0]
    for i in [0..3]
      notas_desejadas = @sacarNotasDe(valor, i)      
      if(notas_desejadas > 0)
        notas[i] = notas_desejadas
        valor -= notas_desejadas * @notas_disponiveis[i]
            
    if valor != 0
      "Somente notas de 100, 50, 20 e 10"
    else
      notas

exports.CaixaEletronico = CaixaEletronico
