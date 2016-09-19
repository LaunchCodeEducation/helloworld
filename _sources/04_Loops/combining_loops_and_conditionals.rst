Combining loops and conditionals
::::::::::::::::::::::::::::::::

A **control structure** is a programming tool that allows our programs to decide which code to execute next based on the state of the program. When dealing with conditionals, which line to execute next was determined by the ``True``/``False`` value of the condition. When looking at loops, each time we go through the loop, the decision of whether or not to keep looping depends on whether or not we have exhausted the items in the list.

We now have two control structures at our disposal: ``if`` statements and ``for`` loops. Let's look at how these two can be combined to expand what we're capable of doing with code.

We know that we can determine whether an integer is even or odd by the modulus operator (``%``). And we've seen several examples where decided whether or not to print a message based on whether a given number was even or odd, using a conditional. Let's combine this concept with that of a loop to print a list of even numbers.

.. activecode:: loop_evens

    # ask the user how many we should print
    max_number = input("Print all positive even numbers less than:")
    max_number = int(max_number)

    for candidate in range(max_number + 1):

        # test for evenness
        if candidate % 2 == 0:
            print(candidate)


As with nested conditionals, the conditional within the loop has an additional level of indentation. The first level of indentation tells Python that we're still inside the loop, and the second level is needed to specify which code should be associated with the conditional.
