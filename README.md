
# Produto de Dados - Regressão

Este projeto tem como objetivo produzir predições para um problema de
regressão linear ou de regressão quantílica. Para tanto, o usuário deve
colocar o banco de dados no formato `.csv` na pasta `entradas` e
especificar o nome dele no objeto `tabela` em `configuracao.yaml`, assim
como fornecer o nome da variável resposta e da(s) variável(is)
explicativa(s) nos campos especificados, respectivamente, como `y` e
`x`. Se houver mais de uma variável explicativa, deve-se colocá-las no
seguinte formato: `[nome_variável_1, nome_variável_2, ...]`. Caso elas
não sejam devidamente especificadas ou os campos sejam deixados em
branco, um erro será retornado.

No objeto `metodo`, também em `configuracao.yaml`, deve-se colocar o
modelo desejado para realizar as predições. Use `rl` para regressão
linear e `rq` para regressão quantílica. Se o método escolhido for
regressão linear, o modelo gerado será o não-saturado, isto é,
interações entre as variáveis não serão consideradas no modelo. Além
disso, para a regressão linear o campo `tau` pode ser deixado em branco.
Por outro lado, se o método escolhido for regressão quantílica, o
parâmetro `tau` pode ser especificado conforme desejado e no caso do
campo ser deixado em branco, será utilizado `0.5` como padrão.

No objeto `predicao`, deve-se colocar o(s) valor(es) da(s) variável(is)
explicativa(s) para o(s) qual(is) se deseja obter a predição e ele(s)
deve(m) estar na ordem e posição correspondente à da(s) variável(is)
explicativa(s) à(s) qual(is) se refere(m), isto é, se em `x` há
`[nome_variável_1, nome_variável_2]`, em `predicao` deve haver
`[valor_variavel_1, valor_variavel_2]`. Além disso, para o caso em que
se deseja realizar mais de uma predição para um modelo com as mesmas
variáveis explicativas, basta inserir os vales em sequência, da seguinte
forma:
`[valor_1_variavel_1, valor_1_variavel_2, valor_2_variavel_1, valor_2_variavel_2]`.
Caso o número de valores para a predição não seja múltiplo do número de
variáveis explicativas ou o campo seja deixado em branco, um erro será
retornado. Ademais, se uma das variáveis explicativas for categórica, em
`predicao` deve-se inserir o nome da categoria desejada para a
realização da predição e é necessário que a categoria não esteja
codificada com números.

Este produto já cria automaticamente o arquivo `.json` com as variáveis
explicativas e seus respectivos valores para a predição na pasta
`entradas`, portanto não é necessário que o usuário forneça este
arquivo.

Para a execução do produto é necessário abrí-lo no RStudio e executar
todas as linhas do arquivo `main.R`. Após a execução, os resultados
produzidos serão:

- O(s) valor(es) predito(s) da variável resposta para os valor(es)
  especificado(s) da(s) variável(is) explicativa(s), em um arquivo
  `.json`, que poderá ser encontrado na pasta `saidas`; e

- Um gráfico cujo `eixo x` corresponde aos valores preditos para as
  observações no conjunto de dados fornecido e o `eixo y`, aos
  respectivos valores observados e cuja a(s) linha(s) vermelha(s)
  pontilhada(s) representam o(s) valor(es) da(s) predição(es) feita(s).
  O gráfico no formato `.pdf` também poderá ser encontrado na pasta
  `saidas`.
