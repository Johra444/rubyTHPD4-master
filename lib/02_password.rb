# creation du mot de passe
def signup
    print "enter your password : "
    pwd = gets.chomp
    return pwd
end

#verification du mot de passe avec boucle while 
#return true quand sort de la boucle
def login(pwd)
    try = 3
    puts "you have #{try} try"
    print "what's your password ? : "
    check_pwd = gets.chomp
    while pwd != check_pwd 
        try-=1
        puts "wrong password, #{try} more try"
        print "try again : "
        check_pwd = gets.chomp
        if try == 0
            puts "no more try by."
            return false
        end
    end
    return true
end

#affichage screen
def welcome_screen
    puts "welcome"
end

def perform
    user_pwd = signup
    if login(user_pwd)
        welcome_screen
    end
end

perform