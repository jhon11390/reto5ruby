class Pregunta
    attr_reader :pregunta
    
    def initialize(pregunta)
        @pregunta = pregunta
    end

    def viewquestion
        File.read("./Preguntas/pregunta#{@pregunta}.txt")
    end
end

aleotorio = rand(3) + 1

question = Pregunta.new(aleotorio)

puts question.viewquestion
