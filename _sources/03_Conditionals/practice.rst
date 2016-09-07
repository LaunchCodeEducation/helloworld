Chapter 3 practice
:::::::::::::::::::::::::::


.. container:: full_width

    #.

        **Number Fun**
        Create a program that asks the user for a number, then tells the user
        if that number is even or if it is divisible by 5. If neither is true,
        do not print anything.

        .. sourcecode:: python

            > Please enter a number: 5
            This number is divisible by 5!
            > Please enter a number: 7

            > Please enter a number: 20
            This number is even!
            This number is divisible by 5!

        .. activecode:: ex_3_2

            #TODO 1: Ask for user input

            #TODO 2: Use conditionals to tell the user whether or not their number is divisible by 5 and/or 7

    #.

        **Are you legal?**
        This program asks the user for their age, then outputs
        the things this person is legally able to do. As a reminder,
        at 16 you are allowed to drive, at 18 you are allowed to
        vote, and at 21 you are allowed to drink. If the person
        is under 16, your program should print: Some day, kid...

        .. activecode:: ex_3_2

            #TODO 1: Ask for user input

            #TODO 2: Use conditionals to determine what the person is legally allowed to do

    #.

        **"It's Friday, Friday..."**

        TGIF, finally! On Friday nights during the summer (June - August), the Art Museum has a
        concert. If it is not raining, the concert will be outside on Art Hill.
        If it is raining, the concert will be held in the museum. Create a program
        that asks the user for the month, the day of the week, and the weather
        (rain or sun) then outputs whether if there will be a concert, and if so
        where it will be held.

        Hint: First, try creating the program without worrying about the weather.
        Then try adding the weather.

        .. sourcecode:: python

            > What month is it? June
            > What day is it? Tuesday
            > Is it rainy or sunny? rainy
            Sorry, concerts are only held on Fridays!
            > What month is it? December
            > What day is it? Friday
            > Is it rainy or sunny? sunny
            Sorry, concerts are only held during the summer!
            > What month is it? July
            > What day is it? Friday
            > Is it rainy or sunny? rain
            There is a concert tonight! It will be held inside the Art Museum.



        .. activecode:: ex_3_3


    #.

        **Too Cool for School**
        This program asks the user for the percent they received on a test, and prints out the corresponding
        letter grade. You do not need to handle - or + grades, simply print a letter. As a reminder, >=90 will be an
        A, >= 80 is a B, >=70 is a C, >=60 is a D, and <60 is an F.

        .. sourcecode:: python

            > What percent did you receive on the test? 60
            Just barely avoided failing - you got a D!

        .. activecode:: ex_3_4


    #.

        **Olympics!**
        The fun at Rio may have just ended, but the countdown is on for the Winter Olympics!
        This program takes an input year and tells the user whether that year
        is a year for the Olympics, either summer or winter.

        The general rule for the Olympic schedule is as follows: the summer
        olympics occur every four years on years that are divisible by four
        (2012, 2016, 2020...). The winter Olympics occur on even years that
        are not divisible by four (2010, 2014, 2018...)

        .. sourcecode:: python

            > Please enter a year: 2011
            Sorry, no Olympics this year.
            > Please enter a year: 1998
            Winter Olympics! Let's watch some skating!
            > Please enter a year: 2016
            Summer Olympics! "Summer time..."

        .. activecode:: ex_3_5

            year = input("Please input a year:")

            #TODO: Use conditionals to calculate whether this is a year for the summer
            #olympics, winter olympics, or neither. Print the answer to the user.


    #.

        **Latte Special**
        Starbucks is offering a new secret drink to celebrate unique holidays. You can
        only order this drink on Tuesdays during the months of February (for
        Groundhog's day), March (for St. Patrick's Day) and October (for Columbus Day).
        Create a program that asks the user for the day, then notifies them if they
        can save get the secret drink. Extra credit: add a description based on the
        month (see example below).

        .. sourcecode:: python

            > What is the month? December
            > What is the day of the week? Wednesday
            Sorry, no secret drink for you!
            > What is the month? February
            > What is the day? Tuesday
            There is a secret drink today, in celebration of Phil (the groundhog)!

        .. activecode:: ex_3_6

    #.

        ****
        This program only accepts certain numbers. Figure out what numbers the program
        is letting go through, and then add descriptive error messages on lines 2, 4,
        and 7 telling the user why their number does not fit the criteria.

        .. activecode:: ex_3_7

            if a < 30:
                print("[Put error message here]")
            elif a > 100:
                print("[Put error message here]")
            else:
                if a % 2 == 0:
                    print("[Put error message here]")
                else:
                    print("That's a great number. Thanks!")

    #.
        **Donut worry, be happy!**
        The donut shop offers discounts on their surprise dozen special
        on even-numbered Sundays (for example, Sunday the 24th and not
        Sunday the 17th). Normally, donuts cost 99 cents a piece and
        there is no discount for buying a dozen. On even-numbered
        Sundays, you get 25% off the total price if you buy
        a dozen. Write a program that calculates the price of
        a dozen donuts on a given day.

        .. activecode:: ex_3_8

            day = input("What day of the week is it?")
            date = input("What day of the month is it?")
