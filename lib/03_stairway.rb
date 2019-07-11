def launch_them
    stair = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    i = 0
    joueur = 0
    time = 100
    tour_time = 0
    while joueur != stair[10]
        #compteur qui permet de savoir cb de tour nous avons fait
        tour_time+=1
        #randomisation
        d = rand(1..6)
        #avance d une marche
        if d == 5 || d == 6
            i+=1
            joueur = stair[i]
        #descend d un marche
        elsif d == 1
            #je m assure que i ne sera pas egual a -1
            if i == 0
                i = 0
            else
                i-=1
            end
            joueur = stair[i]
        end
    end
    return tour_time
end

def average_finish_time(time_play)
    time = []
    average = 0
    time_play.times do
        time.push(launch_them)
    end
    print average
    time.each do |i|
       average = average + i
    end
    puts (average/100)
end

 def play 
    print "how many game you want to do ? : "
    games = gets.chomp.to_i
    print "for #{games} the average is "
    return games
 end

puts average_finish_time(play)
