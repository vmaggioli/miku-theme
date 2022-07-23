function fish_greeting
  # Customize fish greeting message
  set quotes[1] "I can talk about all kinds of things,
while my personality amounts to nothing"
  set quotes[2] "Around this time a year from now,
I wonder what kind of person I will be,
and what kind of person you will be"
  set quotes[3] "One day we will meet again.
I'll always be thinking of you"
  set quotes[4] "Unending survival
The rules of reality outweigh intrinsic goodness
Is the one aiming at my life
Really an enemy?"
  set quotes[5] "The things you can’t do as one
If there’s two, they certainly can be overcome"
  set ran random 1 1 5
  set_color --bold #0396c7
  echo $quotes[$ran]
  set_color normal
end
