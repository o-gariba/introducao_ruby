# caminho relativo do arquivo, modo de execução (r = reading)
File.open('arquivo.txt', 'r') do |papagaio|
    puts papagaio # mostra qual o nome do nosso objeto na memória
    puts papagaio.readline() # Leio a uma linha
    # consumida a primeira linha, agora restam total -1
    puts 'já linha uma linha'
    puts papagaio.read() # leio o arquivo. Devolve uma string. Dpois dessa linha não tenho mais arquivo para ler
end

puts ''
puts 'Lendo o arquivo novamente'
puts ''

File.open('arquivo.txt', 'r') do |arquivo| # podemos atribuir essa linha (sem o do ...) para uma variável. Se fizer isso preciso fazer <variavelComArquivo>.close() para indicar que não vamos mais usar esse arquivo
    for linha in arquivo.readlines() # .readlines() me devolve um array onde cada index guarda uma linha do arquivo
        puts linha
    end
end

puts ''
puts '------- Escrevendo informações em arquivos --------'
puts ''

File.open('arquivo.txt', 'a') do |arquivo| # a = append (só podemos add texto no final do arquivo. Não lemos nem escrevemos antes da ultima linha)
    arquivo.write("\nZumbi") # \n só funciona quando usamos aspas duplas
    puts 'escrevi uma nova linha no arquivo'
end

# Tem várias outras funções não vou usar isso por hora