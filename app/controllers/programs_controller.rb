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
    # Your code goes below.

    @your_output = "Replace this string with your output"

    render("programs/second_program.html.erb")
  end

  def third_program
    numbers = (1..999).to_a

    # Your code goes below.

    @your_output = "Replace this string with your output"

    render("programs/third_program.html.erb")
  end
end
