minha_idade = "24"

# puts pula linha após a string, como se fosse um printf do c
puts ('olá mundo, eu tenho ' + minha_idade + ' anos')


# Tipos de dados: string, number (integer e decimal), boolean, nil (não tem valor, no value)

# String functions (methods), acesso igual ao js (usando .funcao, ex: .length)

puts ''
puts '------ Testando string functions -------'
puts ''

frase = '               lasfiusadf          lsafu   l        '

puts frase.strip().upcase()

puts frase.include? 'las' # true

puts frase[3] # (espaço vazio)

frase = frase.strip()

puts frase[3] # f

frase2 = 'Pedro'

puts frase2.index('P')

# Números e operadores

puts ''
puts '------- numeros e contas -------'
puts ''

# Para imprimir um numero no puts preciso transformá-lo em string usando .to_s

numero = 42034
puts ('Mds, esse número é mto grande. Olha só: ' + numero.to_s)

puts Math.log(5)

# Operações entre inteiros e floats retornam floats

# Pegando informações do usuário: gets

puts ''
puts '------- Recebendo informações do usuario -------'
puts ''

puts 'Qual o seu nome?'

# nome = gets

# puts ('Olá, ' + nome + '. Tudo bem?')

# Quando mandamos uma informação via gets ele dá um enter no texto. Para não criar uma nova linha usamos gets.chomp()

# puts ('Olá, ' + nome.chomp() + '. Tudo bem?')

# Tudo que recebo do gets é transformado em string, caso eu entre com número e queira usá-lo como numero preciso aplicar um método .to_i (integer) ou .to_f (float)

puts ''
puts '------- Calculadora -------'
puts ''

puts 'Entre com o primeiro número a ser somado:'
# num1 =  gets.to_i
 
puts 'Entre com o segundo número a ser somado:'
# num2 = gets.to_i

# puts (num1 + num2)

# Arrays

puts ''
puts '------- Array -------'
puts ''

cores = Array['vermelho', 'preto', 'azul', true]

puts cores

amigos = Array.new

amigos[0] = 'josé'

amigos[7] = 'paulo'

puts amigos.length
puts amigos.include? 'josé'

# Hash = estrutura de dados que associa uma chave a um valor (parece um objeto do js)

puts ''
puts '------- hash -------'
puts ''

estados = {
    "Amazonas" => "AM",
    "São Paulo" => "SP",
    "Rio Grande do Sul" => "RS",
    :Pernambuco => "PE"
}

puts estados["São Paulo"]
puts estados[:Pernambuco]

# Métodos

puts ''
puts '------- Métodos -------'
puts ''

def falaOi(paraQuem="gaspar")
    puts ("oi " + paraQuem)
end

falaOi
falaOi('Galo')

# IF

puts ''
puts '------- IFs -------'
puts ''

if true and false # posso trocar and por or (ou === ||)
    puts 'entrei no if'
elsif true or false
    puts 'Entrei no else if que se escreve elsif'
else
    puts 'entrei no else do if'
end

# Operadores de comparação (>, <, <=, >=) 

puts ''
puts '------- comparando elementos -------'
puts ''

if 4 == '4' # não sei a diferença entre == e ===
    puts 'é igual'
else
    puts 'não é igual'
end

# Case

puts ''
puts '------- comparando elementos c/ case -------'
puts ''

def dizNomeDoDiaCompleto(dia_abreviado)
    nome_completo = ''
    
    case dia_abreviado
    when 'seg'
        nome_completo = 'segunda'
    when 'ter'
        nome_completo = 'terça'
    when 'qua'
        nome_completo = 'quarta'
    when 'qui'
        nome_completo = 'quinta'
    when 'sex'
        nome_completo = 'sexta'
    else
        nome_completo = 'abreviação inválida ou final de semana'
    end

    return nome_completo

end

puts dizNomeDoDiaCompleto('seg')

# While

puts ''
puts '------------ while ------------'
puts ''

index = 1

while index <= 10
    puts index
    index+=1
end

# For loop

puts ''
puts '------------ for ------------'
puts ''

cores = ['vermelho', 'preto', 'azul', 'violeta']

for cor in cores 
    puts cor
end

for index in 0..10 # percorrer de 0 até 10
    puts index
end

5.times do |periquito| # começando em 0, faço uma variavel correr até o número de vezes definido
    puts periquito
end

# Usando loop para construir um método

puts ''
puts '------ loop em métodos ---------'
puts ''

def potencia(base, expoente)
    resultado = 1

    expoente.times do # não preciso de uma variavel criada para receber o valor de repetições até ali da execução
        resultado = resultado * base
    end

    return resultado
end

# espero 4 como resposta
puts potencia(2, 2) 

# espero 27
puts potencia(3,3)

puts potencia(1234,4)

# comentários 

# Para fazer comentários com mais de uma linha posso usar o seguinte comando:

=begin

asjçfl sfsad çlf
sadf sldfkj sa
fsadjfçlasdkfupoisd 
dkskljfhasldfj

=end 

puts 'não estou mais comentando aqui'