#Clase Array_questions: Esta clase trae 5 preguntas al azar y la guarda en un hash.
require "./Filesclass/question.rb"

class Array_questions

    attr_reader :questions

    def initialize
        @questions = Hash.new()
        @questionselement = @questions.length
        self.addquestion()
    end

    private
    
    def addquestion()
        while @questionselement < 5 do
            question = Question_unit.new()
            @questions[question.respuesta()] = question.definicion()
            @questionselement = questions.length
        end
    end

end