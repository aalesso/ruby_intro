class ProgramsController < ApplicationController
  def home
    # Your code goes below.
    r="rock"
    s="scissors"
    p="paper"
    possible_plays=[r,s,p]

    a=possible_plays.sample
    b=possible_plays.sample
    if (a==b)
      result="tie"
    elsif (a==r && b==s)
      result="a"
    elsif (a==r && b==p)
      result="b"
    elsif (a==p && b==s)
      result="b"
    elsif (a==p && b==r)
      result="a"
    elsif (a==s && b==r)
      result="b"
    else
      result="a"
    end
    @your_output = "A got #{a}, B got #{b}, and the winner is #{result.capitalize}"

    render("programs/home.html.erb")
  end







  def first_program
    # Your code goes below.
    #trying to do a dice game



    players_array=["John","Peter","Pablo","Patel","Tim"]
    result_matrix=[] #matrix of players.count x 5
    c=0
    require 'Matrix'
    m = Matrix[]
    dice_total=[]

    for i in (0..players_array.count)
      dice_outcome=[] #the result of each throw will be stored in this array

      while dice_outcome.length < 5
        # for i in 0..5
        c=rand(6)+1 #the possible result of any dice
        dice_outcome.push(c) #will store rand(6) in every location of array

      end

      dice_total[i]=dice_total.push(dice_outcome)
      result_matrix = Matrix.rows(result_matrix.to_a << dice_outcome)

    end
    ones = result_matrix.count(1)
    twos = result_matrix.count(2)
    threes = result_matrix.count(3)
    fours = result_matrix.count(4)
    fives = result_matrix.count(5)
    sixes  = result_matrix.count(6)

    results_type =[ones,twos,threes,fours,fives,sixes]

    jugador_numero=1

    @Jugador1 = "#{results_type} /////  #{result_matrix}"



    render("programs/first_program.html.erb")
  end



  # *******************************
  def second_program

    # Your code goes below.
    dice_possibilities=(1..6).to_a
    dice_outcome=[]
    c=0
    while dice_outcome.length<5
      # for i in 0..5
      c=dice_possibilities.sample
      dice_outcome.push(c)
    end

    jugador_numero=1

    @your_output = "Jugador N°#{jugador_numero}: #{dice_outcome}"

    render("programs/second_program.html.erb")
  end

  # **********************************
  def third_program

    # Your code goes below.
    divisors=[]
    numbers = (1..999).to_a
    numbers.each do |num|
      if (num % 3 ==0) || (num % 5 == 0)
        divisors.push(num)
      else
        1+1 # i dont know what else to put here, i want it to do nothing
      end
    end
    @your_output = divisors.sum

    render("programs/third_program.html.erb")
  end
end
