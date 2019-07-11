#methode qui permet d afficher le nom que l utilisateur va rentrer
def say_hello(first_name)
    puts "Hello, #{first_name} !"
end

#methode qui recupere le nom entrer par l utilisateur
def ask_first_name
    puts "what's your first name ?"
    first_name = gets.chomp
    return first_name
end

#appel des mathodes
first_name = ask_first_name
say_hello(first_name)