
dados_novos = data.frame(matrix(unlist(config$predicao), 
                                ncol = length(config$variaveis$x), 
                                byrow = TRUE))

colnames(dados_novos) = config$variaveis$x
dados_novos = type.convert(dados_novos, as.is = TRUE)

write(jsonlite::toJSON(dados_novos), file = "entradas/explicativas.json")

predicao = predict(readRDS("saidas/modelo.rds"), fromJSON("entradas/explicativas.json"))

write(jsonlite::toJSON(predicao), file = "saidas/predicao.json")
