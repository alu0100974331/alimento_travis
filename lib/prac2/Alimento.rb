
    class Alimento 
        ##
        include Comparable
        include Enumerable
        ##
        def initialize(nombre, proteinas, glucidos, grasas)
        @name = nombre
        @proteinas = proteinas
        @glucidos = glucidos
        @grasas = grasas
        @graf = nil
        end
        attr_accessor :name,:proteinas,:glucidos,:grasas,:graf
        def imprimir()
            puts aux="#{@name}, #{@proteinas}, #{@glucidos}, #{@grasas}."
            aux
        end
        def ve()
            aux = ((@proteinas*4) + (@glucidos*4) + (@grasas*9))
            aux
        end
        def <=>(other)
            return nil unless other.is_a?Alimento
            ve()  <=> other.ve()
        end
        def ==(other)
          if other.is_a?Alimento
             @name == other.name
             ve() == other.ve()
          else
            false
          end
        end
      
        
        # def aibc_imperative
        #     i = 0
        #     r = []
        #     while i < @graf.size
        #       index = 1
        #       s = []
        #       while index < @graf[i].size
        #         if @graf[i][index] < @graf[i][0]
        #         s << 0.0
        #         else
        #         s << (((@graf[i][index] - @graf[i][0]) + (@graf[i][index-1] - @graf[i][0]))/2)*5
        #         end
        #         index = index + 1
        #       end
        #       r << s
        #       i = i + 1
        #     end
        
        #     suma = []
        #     j = 0
        #     while j < @graf.size
        #       k = 0
        #       s = 0
        #       while k < r[j].size
        #         s = s + r[j][k]
        #         k = k + 1
        #       end
        #       suma << s
        #       j = j + 1
        #     end
        #     suma
        # end

        # def aibc_funcional            #x[0]--> glucosa inicial
            
        #     r =[]
        #     arr = []   #se van guardando ambos resultados de la fórmula, y luego con el reduce se suman todos. 
        #     @graf.collect{
        #         |x|  x.each_with_index{|y, index|    #al saltar al siguiente bloque del graf se resetea 'y' y el index
        #         if(index != 0) #para saltar primera iteración porque sería la glucosa inicial - la inicial
        #         	if(y<x[0])  #porque se anularía
        #         	    arr[index-1]=0.0
        #         	else
        #     	    arr[index-1] = ((((x[index]-x[0]) + (x[index-1]-x[0]))/2)*5)		
        #     	    end		
        # 	      end
        #       }
        #       r.push(arr.reduce(:+))
        #     }
        #     r
        # end
    end

