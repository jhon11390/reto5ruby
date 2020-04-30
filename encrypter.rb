#Clase Encrypter: Esta clase encripta los archivos y los crea en la carpeta Preguntas.
class Encrypter
    attr_reader :question, :answer
    
    def initialize(question, answer)
        @question = question
        @answer = answer
        @definicionencry = self.encriptado(@question)
        @respuestaencry = self.encriptado(@answer)
        @allfille = Dir.glob("./Preguntas/*")
        @allfile2 = []
        self.number_of_files
        @numberfiles = @allfile2.count()==0? 1 : @allfile2.count()+1
        self.createquestion
    end
    
    private

    def encriptado(words)
        alphabet = {Q: "a", W: "b", E: "c", R: "d", T: "e", Y: "f", U: "g", I: "h", O: "i", P: "j", A: "k", S: "l", D: "m", F: "n", G: "o", H: "p", J: "q", K: "r", L: "s", Z: "t", X: "u", C: "v", V: "w", B: "x", N: "y", M: "z"}
        defencryted = []
        array = words.chars
        array.each do |arr|
            if alphabet.values.include?(arr)
                defencryted.push(alphabet.invert[arr].to_s)
            else
                defencryted.push(arr)
            end
        end
        return defencryted.join("")
    end

    def number_of_files
        @allfille.each do |file|
            if file.include?("pregunta")
                @allfile2.push(file)
            end
        end
    end

    def createquestion
        File.write("./Preguntas/pregunta#{@numberfiles}.txt", "#{@definicionencry}\n#{@respuestaencry}")
        puts "/" * 50
        puts "La pregunta y respuesta fue guardada !Existosamente¡ con el nombre de archivo pregunta#{@numberfiles}.txt"
        puts "/" * 50
    end
end



#Inicio del programa para encriptar las preguntas

puts
puts "*" * 50
puts "Hola este el algoritmo para ingreasar preguntas al juego Reto5 de ruby"
puts "*" * 50
puts

puts "-" * 50
print "Por favor ingrese la definicion basica de la pregunta: "
definicion = gets.chomp
puts "-" * 50
puts
puts "-" * 50
print "Por favor ahora ingrese la respuesta a la pregunta: "
respuesta = gets.chomp
puts "-" * 50
puts

#Incio de la clase Encrypter

filecrypte = Encrypter.new(definicion.downcase, respuesta.downcase)