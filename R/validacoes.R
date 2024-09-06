
var_necessarias = c(config$variaveis$y, config$variaveis$x)
var_faltando = setdiff(var_necessarias, names(dados))
if (length(var_faltando) > 0) {
  stop("Alguma(s) variável(is) especificada(s) não foi(ram) encontrada(s) no banco de dados.")
}

if (is.null(config$variaveis$y) || length(config$variaveis$y) == 0) {
  stop("Variável resposta (y) não especificada.")
}

if (is.null(unlist(config$variaveis$x)) || length(unlist(config$variaveis$x)) == 0) {
  stop("Variável(is) explicativa(s) (x) não especificada(s).")
}

if (config$metodo != "rl" && config$metodo != "rq") {
  stop("Método de regressão não reconhecido. Use 'rl' ou 'rq'.")
}

if (is.null(config$predicao) || length(config$predicao) == 0){
  stop("Valor(es) para predição não especificado(s).")
}

if (length(config$predicao) %% length(config$variaveis$x) != 0) {
  stop("O número de valores para predição não é múltiplo do número de variáveis explicativas. Especifique-os corretamente.")
}
