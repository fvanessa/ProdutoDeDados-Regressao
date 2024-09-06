
valores_preditos = predict(readRDS("saidas/modelo.rds", dados))

grafico = dados %>% 
  ggplot(aes_string(x = "valores_preditos", y = config$variaveis$y)) +
  geom_point() +
  geom_vline(xintercept = fromJSON("saidas/predicao.json"), 
             linetype = "dashed", color = "red") +
  labs(x="Valores Preditos", y="Valores Observados") +
  theme_classic()

ggsave(grafico, file="saidas/grafico.pdf")
