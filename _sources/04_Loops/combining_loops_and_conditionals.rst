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

Let's consider a more complicated example. It uses only tools we're comfortable with, but the logic is more challenging than most of the problems we've considered so far.

.. admonition:: Example: Finding the maximum element of a list

    Create a list of integers (positive or negative) with values between -999 and 999. Then search for the largest entry in the list and print it to the screen. Your code should work regardless of the entries in the list.

.. activecode:: ch04_max

    # create a list to
    numbers = [-1, 5, 17, -8, -133, 42, 6]

    # keep track of the largest num found so far
    largest = -1000

    for number in numbers:
        if number > largest:
            largest = number

    print("The largest number in the list", numbers,"is", largest)

With a bit more Python under our belts, we'd be able to write this so it could take in a list from another program, or from the user via a prompt. But for now, we'll be content with simply changing the variable `numbers` directly in the code to test it out. In fact, you should modify the list with other values to convince yourself that it works as advertised.

Here are a couple of questions to ask yourself:

- How would the code need to change to find the smallest integer in the list?
- How would the code need to change to allow for *any* integers, not just those between -999 and 999? *Note: We don't have quite enough syntax to do this, so think about how this would work conceptually.*
- Is there any reason this won't work with floats?
