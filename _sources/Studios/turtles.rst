Turtles
::::::::::

*Studios are activities for the in-person version of Hello, World! If you are working through the book on your own, you may skip them.*

.. activecode:: studio_turtles_intro
    :nocodelens:

    import turtle               # allows us to use the turtles library
    wn = turtle.Screen()        # creates a graphics window
    alex = turtle.Turtle()      # create a turtle named alex
    alex.forward(150)           # tell alex to move forward by 150 units
    alex.left(90)               # turn by 90 degrees
    alex.forward(75)            # complete the second side of a rectangle

Write a program that asks the user for a size, and draws a square with sides of that length.

.. activecode:: studio_turtles_square
    :nocodelens:


Now, write a program that asks the user for a size and a number of sides, and draws a regular polygon with sides of that length.

.. activecode:: studio_turtles_polygon
    :nocodelens:
