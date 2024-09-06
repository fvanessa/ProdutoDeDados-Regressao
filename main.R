
renv::restore(prompt = FALSE)

library(yaml)
library(jsonlite)
library(readr)
library(glue)
library(quantreg)
library(tidyverse)

config = read_yaml("configuracao.yaml")

caminho_banco_dados = file.path("entradas", config$tabela)
if (!file.exists(caminho_banco_dados)) {
  stop("O banco de dados não foi encontrado na pasta 'entradas'.")
}

dados = read_csv(glue("entradas/{config$tabela}"))

source("R/validacoes.R")
source("R/funcoes.R")
source("R/treinamento.R")
source("R/predicao.R")
source("R/grafico.R")
