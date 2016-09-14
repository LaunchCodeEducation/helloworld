Chapter 2 practice
:::::::::::::::::::::::::::

.. container:: full_width

    #.

        **Hello!**
        Given a name, say hello to that person as shown in the example below:

        .. sourcecode:: python

            >What is your name? Jesse
            Well hello there Jesse, how are you this fine day?

        .. activecode:: ex_2_1

            name = input("What is your name?")
            #TODO: print the response




    #.

        **Book Reviews**
        We are going to build a "Siri" that asks users for a book title, then gives the user its opinion on that book. However our Siri changes its mind a lot - so it initially responds positively, then changes its mind. See the example below.

        .. sourcecode:: python

            > What's your favorite book? Curious George
            I love Curious George!
            ...actually, Curious George is kind of meh. You need a better taste in books!

        .. activecode:: ex_2_2

            # TODO - prompt the user for their favorite book

            # TODO - give conflicting opinions



    #.

        **Fastforward**
        This program calculates your ages five years in the future and prints the result.

        .. sourcecode:: python

            > What is your name? Sally
            > What is your age? 99
            In five years, Sally will be 104 years old! Wow!

        .. activecode:: ex_2_3

            name = input("What is your name?")
            age = input("What is your age?")

            #TODO: calculate the correct age and print the result

    #.

        **It's your birthday!!**
        Write a program that takes the name of a person and "sings" Happy Birthday to them.

        .. sourcecode:: python

            > What is the name of the birthday person? Lyn
            Happy Birthday to you,
            Happy Birthday to you,
            Happy Birthday dear Lyn,
            Happy Birthday to you!

        .. activecode:: ex_2_4

            #TODO 1: Ask for user input

            lyric = "Happy Birthday to you"
            middle_lyric = "Happy Birthday dear"

            #TODO 2: Using the strings above, user input, and punctuation, print out the lyrics to the song

    #.

        **Area of a Triangle**
        Create a program that calculates the area of a triangle and prints the result. Note: the area of a triangle = 1/2 * base * height

        .. activecode:: ex_2_5

            height = input("What is the height of the triangle?")
            base = input("What is the base of a triangle?")

            #TODO: Calculate the area and print the result


    #.

        **Interest Calculator**
        Let the user calculate the amount of money they will have in the bank after their interest has compounded
        for a certain number of years. Note: A = P(1+r)^t where A = total amount, P = principal, r = rate, and t = time

        .. activecode:: ex_2_6

            principal = input("How much money do you currently have in the bank?")
            rate = input("What is your interest rate?")
            time = input("Over how many years is the interest compounded?")

            #TODO: Calculate the total amount and print the result

    #.

        **Marathon**
        You are in the middle of a marathon, but need to be finished in time
        to make it to a concert tonight! This program asks for the number of miles
        you have run so far in the race, and how many hours you have spent running.
        It then tells the user how many hours it will take them to finish the
        marathon at their current pace. Note: a marathon is 26.2 miles.

        .. sourcecode:: python

            > How many miles have you run so far? 5
            > How many hours ago did you start? 2
            At this rate, you have 8.480000 hours to go. Yikes... best of luck

        .. activecode:: ex_2_7

            #TODO 1: Get user input

            #TODO 2: Calculate the current pace of the runner

            #TODO 3: Calculate the distance they have left to run

            #TODO 4: time_remaining = distance_remaining / current_pace

            #TODO 5: Print the result

    #.

        **Time Traveler!!**
        You got a new time traveler - rock on! It needs a little programming to set up. You must write a program asking for the current time (hours only) and an amount of hours in the future. Use the modulo % operator to tell the time traveler the future hour to which they will be traveling.

        Use a 24-hour clock and do not worry about AM/PM. For instance, if the current time is 20 and it is 6 hours in the future, it would be 2.

        .. activecode:: ex_2_8

            #TODO 1: Ask for user input

            #TODO 2: Calculate the future hour

            #TODO 3: Print the answer. Do not be confused by this print statement - it
            #simply formats the way the time is printed.
            print("You will be traveling to", '%02d:%02d' %(int(finalHr), int("00")))
