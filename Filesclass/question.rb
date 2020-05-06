#Clase Question_unit: Esta clase desencripta los archivos y escoge una pregunta al azar de la carpeta Preguntas.
class Question_unit
    def initialize()
        @pregunta = rand(15) + 1
        @question = File.readlines("./Preguntas/pregunta#{@pregunta}.txt")[1]
        @answer = File.readlines("./Preguntas/pregunta#{@pregunta}.txt")[0]
        @questiondesencrypted = desencriptado(@question)
        @answerdesencrypted = desencriptado(@answer)
    end

    def definicion()
        @answerdesencrypted.capitalize
    end

    def respuesta()
        @questiondesencrypted.upcase
    end

    private

    def desencriptado(words)
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
end


