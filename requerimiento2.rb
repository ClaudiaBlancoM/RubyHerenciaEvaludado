#MÓDULOS DEL REQUERIMIENTO
module Habilidades
    module Volador
        def volar
            puts 'Estoy volandooooo!'
        end
    
        def aterrizar
            puts 'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
            puts 'Estoy nadando!'
        end
    
        def sumergir
            puts 'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            puts 'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            puts 'Puedo comer plantas!'
        end
    end
    
    module Carnivoro
        def comer
            puts 'Puedo comer carne!'
        end
    end
end

# Requerimiento 1
class Animal
    attr_accessor :nombre
    def initialize (nombre)
        @nombre = nombre
    end   
end 

# Requerimiento 2
# ● Crear la clase Animal con un atributo nombre. Agregar un método getter para el
# atributo nombre. (1 Punto)
class Animal
    attr_reader :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

# ● Crear las clases Ave, Mamífero e Insecto. Ambas heredan de Animal. (1 Punto)
class Ave < Animal
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

class Mamifero < Animal
    include Habilidades::Caminante
end

class Insecto < Animal
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

# Requerimiento 3
# ● Crear las clases Pingüino, Paloma y Pato. Las tres heredan de Ave. (1 Punto)
class Pinguino < Ave
    include Habilidades::Nadador
    include Habilidades::Nadador
end

class Paloma < Ave
end

class Pato < Ave
    include Habilidades::Nadador
    include Habilidades::Nadador
end

# Requerimiento 4
# ● Crear las clases Perro, Gato y Vaca. Las tres heredan de Mamífero. (1 Punto)
class Perro < Mamifero
    include Alimentacion::Carnivoro
end

class Gato < Mamifero
    include Alimentacion::Carnivoro
end

class Vaca < Mamifero
    include Alimentacion::Herbivoro
end

# Requerimiento 5
# ● Crear las clases Mosca, Mariposa y Abeja. Las tres heredan de Insecto. (1 Punto)
class Mosca < Insecto
end

class Mariposa < Insecto
end

class Abeja < Insecto
end

perro = Vaca.new('Bobby').comer
pato = Gato.new('Patito').comer
abeja = Abeja.new('Pintadita').volar

#RESULTADOS:
# Puedo comer plantas!
# Puedo comer carne!
# Estoy volandooooo!