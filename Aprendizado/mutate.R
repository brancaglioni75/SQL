if(!require(dplyr))
  install.packages("dplyr")

library(dplyr)


## Criar um dataFrame de exemplo

dados <- data.frame(
                      nome = c("João", "Maria", "Pedro"),
                      idade = c(30, 25, 35)
)


# Aumentar todas as idades em 5 anos
dados <- mutate(dados, idade_alterada = idade + 5)


## Criar um dataframe de exemplo para calcular IMC
dados <- data.frame(nome = c("João", "Maria", "Pedro"),
                    peso = c(70,60,80),
                    altura = c (1.75, 1.60, 1.80)
                    )
dados <- mutate(dados, imc = peso/altura^2)
print(dados)


## Criando uma variável categórica com base em uma variável numérica
dados <- data.frame(nome = c("João", "Maria", "Pedro"),
                    idade = c(30,25, 35)
  
)


# Criar uma variável categórica com base na idade
dados <- mutate(dados, faixa_etaria = ifelse(idade< 30, "Jovem", "Adulto")
                )
print(dados)


## Criando uma variável baseada em múltiplas condições
dados <- data.frame(nome = c("João", "Maria", "Pedro", "José"),
                    idade = c(30, 25, 35, 41)
  
)


# Criar uma variável categórica com base na idade

dados <- mutate(dados, status =case_when(idade<30 ~ "Jovem",
                                         idade>= 30 & idade < 40 ~ "Adulto",
                                         idade>= 40 ~ "Idoso"))

print(dados)
