begin 
    num = 10/0
rescue ZeroDivisionError # Posso declara um erro específico para ser resgatado. Posso criar vários rescues com diferentes erros
    puts 'Houve uma divisão por 0'
end

arr = [1, 2, 3]

begin 
    arr['bola']
rescue => e # Posso atribuir a mensagem de erro para uma variável e exibi-la
    puts 'Não podemos procurar um array através de uma string' 
    puts e
end