#pyramid de ramses
def full_pyramid
    print "Hi, select a number : "
    floor = gets.chomp.to_i
    puts "your ramses pyramid with #{floor} floors :"
    floor.times do |i|
        puts " "*(floor - i) + "#"*(2 * i + 1)
    end
end

#pyramid icebrg
def wtf_pyramid
    print"Hi, select a odd number : "
    floor = gets.chomp.to_i
    #oblige a choisir un nombre impair
    while floor%2 == 0
        print "a odd number : "
        floor = gets.chomp.to_i
    end
    # le haut de l iceberg
    i=0
    f=0 
    half_floor = floor/2 + floor%2
    puts "your wtf pyramid with #{floor} floors :"
    #premiere etage avant la decremantation de l iceberg
    while i < half_floor
        i+=1
        puts " "*(half_floor - i) + "#"*(i+f)
        f+=1
    end
    space = 0
    #iceberg
    while i < floor
        space+=1
        f-=1
        i+=1
        puts " "*space + "#"*(floor - i + f)
    end
end

#demande au joueur sur quel pyramid il veut jouer
def play    
    puts "What pyramid you want to do ?"
    print "select 1 for ramses or 2 for wtf : "
    choice = gets.chomp.to_i
        while choice != 1 && choice != 2
            print "select 1 or 2 : "
            choice = gets.chomp.to_i
        end
    if choice == 1
        full_pyramid
    else  
        wtf_pyramid
    end
end

play
