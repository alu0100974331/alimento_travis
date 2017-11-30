

class Huevos_lacteos_helados < Alimento 
    def initialize(nombre, proteinas, glucidos, grasas)
        super(nombre, proteinas, glucidos, grasas)
    end
    attr_accessor :Name,:Proteinas,:Glucidos,:Grasas
end

class Carnes < Alimento 
    def initialize(nombre, proteinas, glucidos, grasas)
        super(nombre, proteinas, glucidos, grasas)
    end
    attr_accessor :Name,:Proteinas,:Glucidos,:Grasas
end

class Pescados < Alimento 
    def initialize(nombre, proteinas, glucidos, grasas)
        super(nombre, proteinas, glucidos, grasas)
    end
    attr_accessor :Name,:Proteinas,:Glucidos,:Grasas
end

class Alimentos_grasos < Alimento 
    def initialize(nombre, proteinas, glucidos, grasas)
        super(nombre, proteinas, glucidos, grasas)
    end
    attr_accessor :Name,:Proteinas,:Glucidos,:Grasas
end

class Alimentos_carbohidratos < Alimento 
    def initialize(nombre, proteinas, glucidos, grasas)
        super(nombre, proteinas, glucidos, grasas)
    end
    attr_accessor :Name,:Proteinas,:Glucidos,:Grasas
end

class Verduras < Alimento 
    def initialize(nombre, proteinas, glucidos, grasas)
        super(nombre, proteinas, glucidos, grasas)
    end
    attr_accessor :Name,:Proteinas,:Glucidos,:Grasas
end

class Frutas < Alimento 
    def initialize(nombre, proteinas, glucidos, grasas)
        super(nombre, proteinas, glucidos, grasas)
    end
    attr_accessor :Name,:Proteinas,:Glucidos,:Grasas
end

class Listde
    include Comparable
    include Enumerable
    def initialize(nodo)
        @Head = nodo
        @Tail = nodo
    end
    attr_accessor :Head, :Tail
    def insert( nodo )
        aux = @Head
        @Head.next = nodo
        @Head = nodo
        @Head.prev = aux
    end
    def extract_d()
        @Head = @Head.prev
        @Head.next = nil
    end
    def extract_i()
        @Tail = @Tail.next
        @Tail.prev = nil
    end
    def each
        nodo=@Tail
        while nodo != nil
            yield nodo.value
            nodo = nodo.next
        end
    end
end


class Array
    def tamanito
        self.size
    end
    def impr(x)
        puts(self[x].ve())
        puts (self[x].class)
    end
    def swap(a,b)
        self[a], self[b] = self[b], self[a]
    end
    def burbuja
        for i in 1..(self.size()-1)
            for j in 0..(self.size-i-1)
                if self[j+1]< self[j]
                    aux= self[j+1]
                    self[j+1]=self[j]
                    self[j]= aux
                end
            end
        end
        ord= Array.new()
        for i in 0..(self.size()-1)
            ord.push(self[i])
        end
        ord
    end
    
    def each_sort
        self.each_with_index do |val,i|            #i será el elemento en sí, de la posición correspondiente.
            if(i!=0)
                self.each_with_index do |val2,j|
                    if ( j < (self.size()-i ))
                        if self[j+1]<self[j]
                            aux=self[j+1]
                            self[j+1]=self[j]
                            self[j]=aux
                        end
                    end
                end
            end
        end
    end

end