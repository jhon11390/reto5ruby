require "./Filesclass/question.rb"

class Array_questions

    attr_reader :questions

    def initialize
        @questions = Hash.new()
        @questionselement = @questions.length
        self.addquestion()
    end

    def addquestion()
        while @questionselement < 5 do
            question = Question_unit.new()
            @questions[question.respuesta()] = question.definicion()
            @questionselement = questions.length
        end
    end

end