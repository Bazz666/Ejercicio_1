class Carta 
    attr_reader :numero, :color 
    
    def initialize(numero,color)

        colores = ['C', 'D','E','T']
        if (numero >=1 && numero <=13) && colores.include?(color)
            @numero=numero
            @color = color
        else
            
        end
    end
end

#--------------------------------------------------
class Mazo
    attr_accessor :cartas
    def initialize(cartas)
        colores = ['C','D','E','T']
        @cartas =[]
        5.times do |c|
            @cartas.push(Carta.new(rand(1..13),colores.sample))
            
        end
    end
end
#----------------------------------------------
colores = ['C', 'D','E','T']
m1= Mazo.new(Carta.new(rand(1..13),colores.sample))
puts "\n#{m1}"
puts "\n#{m1.cartas}\n"



