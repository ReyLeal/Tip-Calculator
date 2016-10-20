 #created a method named calculate tip.

  prompt = '$'

  #input
   #used print instead of puts so that the prompt displays before the user input.
  total_bill = nil

  bill = total_bill

  until (bill.is_a?(Float)) do

    puts "Please enter a valid number for your bill."
    puts "What is your total bill?"
    print prompt #used print instead of puts so that the prompt displays before the user input.
    begin
      bill = Float(gets)
    rescue ArgumentError
      bill = nil
    end
  end


#

  percent_tip = nil #used .to_f to convert this number to a float so that it accepts decimals.

  tip_percent = percent_tip

  until (tip_percent.is_a?(Float)) do

    puts "Please enter a valid percent for your tip."
    puts "What percent tip would you like to give?"
    begin
      tip_percent = Float(gets)
    rescue ArgumentError
      tip_percent = nil
    end
  end





  total_people = nil

  party = total_people
  until (party.is_a?(Integer)) do

    puts "How many people are splitting this bil?"
    begin
      party = Integer(gets)
    rescue ArgumentError
      party = nil
    end
  end



  puts "So, your total bill was $#{bill}, you are giving a #{tip_percent}% tip, \
and you have #{party} in your table. Is this correct (y/n)?"



  answer = gets.chomp



  valid_answers = ['yes', 'y', 'yea', 'sure', 'ja']
  until valid_answers.include?(answer) #until loop will keep going until user input is one of the strings in the array.

       puts "Lets start again then!\n
        "#input
       #used print instead of puts so that the prompt displays before the user input.
      total_bill = nil

      bill = total_bill

      until (bill.is_a?(Float)) do

        puts "Please enter a valid number for your bill."
        puts "What is your total bill?"
        print prompt #used print instead of puts so that the prompt displays before the user input.
        begin
          bill = Float(gets)
        rescue ArgumentError
          bill = nil
        end
      end




      percent_tip = nil #used .to_f to convert this number to a float so that it accepts decimals.

      tip_percent = percent_tip

      until (tip_percent.is_a?(Float)) do

        puts "Please enter a valid percent for your tip."
        puts "What percent tip would you like to give?"
        begin
          tip_percent = Float(gets)
        rescue ArgumentError
          tip_percent = nil
        end
      end





      total_people = nil

      party = total_people

      until (party.is_a?(Integer)) do

        puts "How many people are splitting this bil?"
        begin
          party = Integer(gets)
        rescue ArgumentError
          party = nil
        end
      end



      puts "So, your total bill was $#{bill}, you are giving a #{tip_percent}% tip, \
and you have #{party} in your table. Is this correct (y/n)?"

    answer = gets.chomp
  end

  if answer.to_s == "y" || answer == "yes" # convert answer to string and compares it to yes and uses the pipes ( ||  are equal to or) to say OR yes.

    #Calculates
    tip = (bill * tip_percent) / 100 #put total_bill and percent_tip in paranthesis so that they are done before we divide.
    total = bill + tip
    my_share = total / party

    my_share = "$%.2f" % my_share #clobber the my_share variable, and replace it with a new one that means
    # "$%.2f" which converts floats into money.
    total = "$%.2f" % total #same as above, but for the total var

    #Outputs
    puts "Your total share of the bill is #{my_share}."
    puts "The total bill for the entire party is #{total}."

    # else
    #   return "Im sorry! Let's try again!" #changed to return so that it returns the string. (you dont need to write return.)
  end





#
# result = calculate_tip() #make a new variable called result that calls your method so that you dont clobber the method.
