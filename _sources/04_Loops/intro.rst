Introduction to loops
:::::::::::::::::::::

In chapter 1 we made the point that one of the primary powers of computers and programming languages is to repeat tasks again and again. This chapter introduces one of the main tools for implementing repetition in code: for loops.

As before, let's begin with a real-world example. Suppose you -- as a person, not a computer -- are given the following directive.

.. admonition:: Example 1

    Count out loud from 0 to 100, using only even numbers.

This seems to be a fairly simple task, and indeed it is. But think about how you might break it down, step-by-step. We are doing essentially the same thing again and again (51 times, to be exact). We know where to start (at 0), and we know where to end (at 100). Each time we are doing a variation of the same task, saying a number aloud.

Think about how you would do this with code, using the `print` function instead of counting out loud. Using only tools we've learned so far, you might come up with something like this:

.. sourcecode:: python

    print(0)
    print(2)
    print(4)
    print(6)
    # ...and so on

This is tedious, to say the least. Furthermore, what if we wanted to extend or shorten our count, say to 150 or 50? This would require a significant change to the program; we'd have add or delete dozens of lines of code.

This approach is also error-prone. For each line of code, there is another chance to mistype something, or to use the wrong number. Each line of code increases the likelihood of a mistake. Code is supposed to be efficient, and indeed there is a much better way to do this.

We'll revisit this example later, but first let's look at a another example.

.. admonition:: Example 2

    You work in an office with 5 other employees: Luke, Sheila, Justin, Mary, and Samantha. Greet each one with "Good morning, _______!" as you walk into the office.

As we saw with Example 1, one way to do this in code would be:

.. activecode:: ch04_greetings

    print("Good morning, Luke!")
    print("Good morning, Sheila!")
    print("Good morning, Justin!")
    print("Good morning, Mary!")
    print("Good morning, Samantha!")

However, we can do this much more efficiently using a **for loop**. A for loop is a structure that allows us to repeat a task a specific number of times, and to use different data (such as a different name) each time we repeat. Here's one way to build a for loop.

.. sourcecode:: python

    for item in [item1, item2, item3,...itemN]:
        # some code goes here
        # we can use the item as well; if it is a string, we might print(item)


.. note::

    - As with conditionals, the code within the loop should be indented by one tab, and we can have multiple lines of code within the loop.
    - The first line of the loop specifies a list of items. The code within the loop will execute *once for each item in the list*, with the value of the `item` variable being updated to have the value of each item in the list, in turn. If there are N = 10 items in the list, the loops repeats 10 times.
    - The variable `item` can be given any other name that we like.
    - The list `[item1, item2, ... itemN]` might look like `[1, 2, 3, 4, 5]` or `["Chris", "Jesse", "Zach"]` or even `[3.14, "Pi", 1, 0, "frog"]`. It is a special way of collecting data in Python called, appropriately, a **list**. There are lots and lots of ways to build and use lists, and learn more about them if you continue learning Python beyond this course. The key thing to note for now is that you can build a list by creating a comma-separated list of Python data, enclosed with square brackets.

Armed with for loops, let's fix our morning greeting code.

.. activecode:: ch04_greetings_redux

    for name in ["Luke", "Sheila", "Justin", "Mary", "Samantha"]:
        print("Good morning, " + name + "!")

As always, run the code above, and make changes to get familiar with how it works. How would you add or remove a person? What if you wanted to count the number of coworkers that you greet as you go?

Here's a slightly different way to do the same thing:

.. activecode:: ch04_greetings_redux_again

    coworker_names = ["Luke", "Sheila", "Justin", "Mary", "Samantha"]

    for name in coworker_names:
        print("Good morning, " + name + "!")

In this case, we've chosen to put our coworkers' names in a variable, ``coworker_names``. As with other data types (integers, floats, strings) a list can be stored in a variable.
