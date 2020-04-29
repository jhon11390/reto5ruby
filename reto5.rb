require "./Filesclass/questions.rb"


class Reto
    def initialize
        puts
        puts "Bienvenido a reto 5, Para jugar, solo ingresa el termino correcto para cada una de las definiciones, Listo? Vamos!"
        puts
        @questions = Array_questions.new()
        @arrayquestions = @questions.questions
        @numeropregunta = 0
        self.operationquestion()
        
    end

    def operationquestion
        while @numeropregunta < 5
            puts "Definición"
            puts
            puts @arrayquestions.values[@numeropregunta]
            puts
            print "Adivinar: "
            answeruser = gets.chomp
            while answeruser.upcase != @arrayquestions.keys[@numeropregunta]
                puts
                puts "Incorrecto!, Trata de nuevo"
                puts
                print "Adivinar: "
                answeruser = gets.chomp
            end
            puts
            puts "Correcto!"
            puts
            @numeropregunta = @numeropregunta + 1
        end
        puts
        puts "*"*50
        puts "++++++ Felicidades has completado el reto ++++++"
        puts "*"*50
        puts
    end

end


jugar = Reto.new()
