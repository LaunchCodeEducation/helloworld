For loop examples
:::::::::::::::::

Let's get familiar with for loops by looking at several examples.

.. note::

    We'll continue to use the term "for loop" instead of just "loop" because there are other types of loops. We won't explore them in this class, but we still want to get used to the correct terminology.


Here is a simple for loop that iterates through a list of ints:

.. activecode:: ex_loopex_1

    for number in [1, 4, 7, 8]:
        print(i)

The list can contain strings:

.. activecode:: ex_loopex_2

    for item in ["peanut butter", "chocolate chips", "pretzels"]:
        print("I need to remember to buy " + item + " at the grocery store")

The list could even contain a combination of things!

.. activecode:: ex_loopex_3

    for thing in ["banana", 3.4, 8, 100, -1, "hello"]:
        print(thing)

You could store this list as a variable, then use it in your loop. But remember, the variable iterator (in this case, i) should not be previously created.

.. activecode:: ex_loopex_4

    nums = [14, 15, 18, 21]

    for i in nums:
        print(i)


You can have as many lines in a loop as you want.

.. activecode:: ex_loopex_6

    for num in [3, 4, 5, 6, 7]:
        print("The number is " + num);
        print("The square of the number is " + num**2)
