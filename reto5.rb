#Clase Reto: Esta clase muestra la interfaz al usuario para jugar, muestra  pregunta a pregunta del hash de la clase Array_questions.
require "./Filesclass/questions.rb"

class Reto
    def initialize
        puts
        puts "Bienvenido a reto 5, Para jugar, solo ingresa el termino correcto para cada una de las definiciones, Listo? Vamos!"
        puts
        @questions = Array_questions.new()
        @arrayquestions = @questions.questions
        @numeropregunta = 0
        operationquestion()    
    end

    private

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
        puts "<<<<< Si deseas jugar nuevamente presiona la letra (s) de lo contrario (x) para salir >>>>>"
        puts
        print "Que deseas hacer: "
        rta = gets.chomp

        while rta != "s" && rta != "x"
            puts
            puts "Has introducido una opcion incorrecta, por favor presiona (s) para jugar otra vez o (x) para salir"
            puts
            print "Que deseas hacer: "
            rta = gets.chomp
        end
        if rta == "s"
            initialize()
        elsif rta == "x"
            puts
            puts "<<<<< Gracias por jugar, Hasta pronto :) >>>>>"
            puts
        end
    end
end


jugar = Reto.new()
