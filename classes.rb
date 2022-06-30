# Classes começam com letra maiúscula

class Livro

    attr_accessor :titulo, :autor, :num_paginas

    def initialize(titulo, autor, num_paginas) # chamado quando dou .new() na classe
        puts 'criando um livro'
        @titulo = titulo
        @autor = autor
        @num_paginas = num_paginas
    end

    def tem_mais_de_100pag
        if @num_paginas > 100
            return true
        end
            return false
    end

end

# A partir de uma classe posso criar objetos dessa classe

# livro1 = Livro.new() # Isso não roda mais a partir do momento que defini que o inicializador recebe 3 parametros

# livro1.titulo = 'Revolução dos bichos'
# livro1.autor = 'Orwell'
# livro1.num_paginas = 96

# puts livro1.titulo

# initialize method

livro1 = Livro.new('Revolução dos bichos', 'Orwell', 96)

puts livro1.titulo

puts livro1.tem_mais_de_100pag() #Não preciso usar () quando não preciso fornecer parametros/atributos?

livro2 = Livro.new('AAAAAAH QUERO EMPREGO', 'Eu', 145)

puts livro2.tem_mais_de_100pag

# Herança - posso criar subclasses de uma classe que herda os métodos inclusive o initialize()
# Posso reescrever uma função em uma subclasse

class Compilado < Livro 

    def eh_grande
        if @num_paginas > 350
            return true
        end
        return false
    end

end

compilado1 = Compilado.new('BBBB', 'lkasdfj', 400)

puts compilado1.titulo

puts compilado1.tem_mais_de_100pag()
puts compilado1.eh_grande()