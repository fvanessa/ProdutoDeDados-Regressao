
y_var = config$variaveis$y
x_vars = unlist(config$variaveis$x)
tau_desejado = ifelse(!is.null(config$tau), config$tau, 0.5)

if (config$metodo == "rl") {
  modelo = reg_linear(dados, y_var, x_vars)
  } else {
  modelo = reg_quantilica(dados, y_var, x_vars, tau = tau_desejado)
  }

saveRDS(modelo, file = "saidas/modelo.rds")
