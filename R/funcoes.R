
reg_linear = function(df, y, x) {
  regressao = as.formula(paste(y, "~", paste(x, collapse = " + ")))
  modelo = lm(regressao, data = df)
  return(modelo)
}

reg_quantilica = function(df, y, x, tau) {
  regressao = as.formula(paste(y, "~", paste(x, collapse = " + ")))
  modelo = rq(regressao, data = df, tau = tau)
  return(modelo)
}
