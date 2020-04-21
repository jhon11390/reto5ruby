class Pregunta
    attr_reader :pregunta
    
    def initialize(pregunta)
        @pregunta = pregunta
        @question = File.readlines("./Preguntas/pregunta#{@pregunta}.txt")[1]
        @answer = File.readlines("./Preguntas/pregunta#{@pregunta}.txt")[0]
        @questiondesencrypted = self.encriptado(@question)
        @answerdesencrypted = self.encriptado(@answer)
    end

    def encriptado(words)
        alphabet = {Q: "a", W: "b", E: "c", R: "d", T: "e", Y: "f", U: "g", I: "h", O: "i", P: "j", A: "k", S: "l", D: "m", F: "n", G: "o", H: "p", J: "q", K: "r", L: "s", Z: "t", X: "u", C: "v", V: "w", B: "x", N: "y", M: "z"}
        defencryted = []
        array = words.chars
        array.each do |arr|
            arr2 = arr.to_sym
            if alphabet.keys.include?(arr2)
                defencryted.push(alphabet[arr2])
            else
                defencryted.push(arr)
            end
        end
        return defencryted.join("")
    end

    def viewquestion
        puts @answerdesencrypted
        puts @questiondesencrypted
    end
end

aleotorio = rand(4) + 1

questiones = Pregunta.new(aleotorio)
puts aleotorio
puts questiones.viewquestion

