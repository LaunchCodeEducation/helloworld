Chapter 4 practice
:::::::::::::::::::::::::::


.. container:: full_width


    #.

        **Party Time!**
        Let’s say we have some friends, and we’d like to send them each an email inviting them to our party. We don’t quite know how to send email yet, so for the moment we’ll just print a message for each friend.


        .. activecode:: ex_4_0

            #TODO 1: Finish creating a list of names. Each should be a separate string.
            friends = ["Elvis", ]
            #TODO 2: Create a for loop using that list
            #TODO 3: Inside the loop, print out a short invitation to the person using their name.


    #.

        **Loop-the-Loop**
        Loops can be built in two ways: using a list or using the range function. Create a for loop using range that produces the same output is the for loop below (which uses a list).

        .. activecode:: ex_4_1

            for i in [4, 8, 12, 16, 20]:
                print(i)

            #TODO: Create the same output using a for loop with a range



    #.

        **Classic Interview Problem**
        The problem is famously used in job interviews. See if you can figure it out! Loop through the numbers between 1 and 20. If a number is divisible by 3, print Hip. If the number is divisible by 7, print "Hooray".

        .. activecode:: ex_4_2



    #.

        **Launch(Code)**
        Create a program where the user inputs a number, and your program prints out a countdown from that number. If the user inputs a negative number, the program should do nothing. ::

            > Please enter a number: 6
            6...
            5...
            4...
            3...
            2...
            1...
            BLAST OFF!!!

        .. activecode:: ex_4_3


    #.

        **The Owl and the Pussycat**
        This program should iterate through the beginning of the poem "The Owl and the Pussycat" and print out all words that are three letters long. List through the List of words below, and print out any word that has three letters. To find the length of a word, use the function ``len()`` as shown below. ::

            > a = "hello"
            > len(a)
            5


        .. activecode:: ex_4_4

            word_list = ["the", "owl", "and", "the", "pussycat", "went", "to", "sea", "in", "a", "beautiful", "pea", "green", "boat", "they", "took", "some", "honey", "and", "plenty", "of", "money", "wrapped", "up", "in", "a", "five", "pound", "note"]

            #TODO: create a loop that iterates through the list above and prints any word that is three letters long.

    #.

        **Sums**
        Given a list of numbers, this program calculates the total sum. Similarly to finding the length of a string in the problem above, you can find the length of a list by using the ``length()`` function.

        ..activecode:: ex_4_5

            numbers = [5, 7, -2, 3, 5]
            list_length = length(numbers)
            sum = 0

            #TODO: Create a loop that iterates through the list and updates the sum variable.

    #.

        **Sums, Continued**
        Let's make this a little more complicated. Ideally, we want the user to choose the list of numbers we are summing. We can do this via input statements, but using what we know each input statement can only take one number. Let's do this in steps.

        Version 1: Ask the user for two integers (using two input statements) and add them together.

        Version 2: Ask the user for five integers. Create a loop that iterates five times. Inside the loop, add an input statement asking for the next integer and add it to a running sum (see the *Sums* problem above).

        Version 3: Ask the user how many integers they would like to input. Your loop should iterate that many times.

        ..activecode:: ex_4_5


    #.

        **TURTLES!!**

        Trust me, you're going to *like* turtles.

        .. raw:: html

            <div style="text-align:center">
            <iframe width="640" height="360" src="https://www.youtube.com/embed/CMNry4PE93Y?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
            </div>

        Let's draw a square with a turtle. As always, we will give you the two lines required to create the turtle - and you must do the rest. After you have finished, try experimenting. What else can you make it draw? Try using changing the color of the turtle (on line 5), or adding a line that changes the shape (using ``zach.shape()``). Try making two turtles (copy our two lines of code, and name the second turtle something different).

        .. activecode:: ex_4_7

            import turtle

            wn = turtle.Screen()
            zach = turtle.Turtle()
            zach.color("purple")

            #TODO 1: Draw a square


            #TODO 2: Experiment with movement, color, and shape


            #TODO 3: Add a second turtle
