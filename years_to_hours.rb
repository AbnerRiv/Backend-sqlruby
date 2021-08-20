def run()
    puts("Welcome! In this app, you'll be converting:
        \r Years to hours
        \r Decades to minutes
        \r Your age to seconds\n")
    puts(year_hour())
    puts(decade_minute())
    puts(age_second())
    puts("You have reached the end of the program. Bye :)")
end

def input_handling(what_to_ask)
    while true do
        input = gets.chomp
        # used Regex to check if it's a whole number
        unless input.match(/[^0-9]/)
            return input.to_i
        else
            #                                        what_to_ask is plural, this makes it singular
            print "\nThat's not an integer.\nPlease insert a whole number (#{what_to_ask[..-2]}): "
        end
    end
end

def ask_num(what_to_ask)

    if what_to_ask == "ages"
        #                             age inseted of ages
        print "\nPlease enter your #{what_to_ask[..-2]}: "
        return input_handling(what_to_ask)
    end
    
    print "\nEnter a number of #{what_to_ask}: "
    input_handling(what_to_ask)
end

def year_hour()
    #                  years *days*hour
    hours = ask_num("years") * 365* 24
    "That's #{hours} hours."
end

def decade_minute()
   #                   decades  *years*days*hour*minutes
   minutes = ask_num("decades") * 10  *365 * 24* 60
   "That's #{minutes} minutes" 
end

def age_second()
    #                  years *days*hour*minutes*seconds
    seconds = ask_num("ages") *365 * 24 *  60   *  60;
    "That's #{seconds} seconds"
end

run()