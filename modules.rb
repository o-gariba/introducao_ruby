# Podemos reunir métodos que fazem funções similares em um módulo. Módulos são similares a pacotes do js

module Comunicacao

    def diz_oi(nome)
        puts ('oi ' + nome)
    end

    def diz_tchau(nome)
        puts ('tchau ' + nome)
    end

end

# Comunicacao.diz_tchau('batata')
# Não posso usar um método de um módulo sem antes inclui-lo no meu código, assim:

include Comunicacao # Tudo que eu colocar após o include aqui, caso eu importe esse arquivo em outro, vai ser executado mesmo que eu só chame o outro arquivo (que está importando o módulo definido aqui)

# Comunicacao.diz_oi('Marcos')