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
    if 2 < 1
      @your_output = "duh"
    end

    render("programs/first_program.html.erb")
  end

  def second_program

    our_numbers = [4, 10, 6]        # Create an array of numbers
    squared_numbers = []            # Create an empty array

    our_numbers.each do |num|       # For each element in numbers, (refer to it as "num")
      square = num * num            # Square the number
      squared_numbers.push(square)  # Push it into the squared_numbers array
    end

    @your_output = squared_numbers.sum  # Sum the squares

    render("programs/second_program.html.erb")
  end

  def third_program
    divisors=[]
    numbers = (1..999).to_a
    numbers.each do |num|
      if (num % 3 ==0) || (num % 5 == 0)
        divisors.push(num)
      else
        1+1 # i dont know what else to put here, i want it to do nothing
      end
    end
    # Your code goes below.

    @your_output = divisors.sum

    render("programs/third_program.html.erb")
  end
end
