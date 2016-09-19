Nested conditionals
:::::::::::::::::::

We can write code with more complex branching behavior by combining conditionals, and in particular by nesting conditionals.

Let's see how this works by tackling the following problem.

.. admonition:: Example 3.4.1

    Write code that prompts for the user to enter an integer. If the number is odd, print nothing. If it is even, print "EVEN!" and if it is also positive print "POSITIVE!".

Our first attempt at a solution might look like this.

.. activecode:: ch03_nested_if_1

    user_input = input("Enter an integer:")
    number = int(user_input) # user_input is a string, convert it

    if number % 2 == 0:
        print("EVEN!")

    if number > 0:
        print("POSITIVE!")

However, what happens if we enter 3? We find that the output is positive ``POSITIVE!`` even though 3 is odd and nothing should be printed. This code doesn't work as desired because we only want to test for positivity when we already know that the number is even. We can enable this behavior by putting the second conditional *inside* the first.

.. activecode:: ch03_nested_if_2

    user_input = input("Enter an integer:")
    number = int(user_input) # user_input is a string, convert it

    if number % 2 == 0:

        print("EVEN!")

        if number > 0:
            print("POSITIVE!")

Try this with a bunch of values (even, odd, positive, negative) to ensure it works as desired. Nice, huh?

Notice that when we put a conditional inside another conditional, the body of the nested conditional is indented by two tabs, and not just one. This is how Python knows that the second/inner conditional is part of the body corresponding to the first/outer conditional. The indentation is critical for Python to understand what we want.

The examples presented in this section may not seem that complicated or real world-like, but rest assured, nesting conditionals is something that is done frequently.


.. mchoice:: quiz_ch3_
    :answer_a: The code won't run due to invalid syntax
    :answer_b: "odd"
    :answer_c: "even"
    :answer_d: The code runs but doesn't print anything
    :correct: d
    :feedback_a: The code is valid syntactically
    :feedback_b: The ``print`` statement is within the ``if num % 2 == 0``, but ``num % 2`` is 1 so it doesn't execute the block within the outer `if`
    :feedback_c: There are no print statements with the word "even"
    :feedback_d: The print statement here is what is sometimes referred to as "dead code" since it is impossible for it to ever be executed (a number can't be both even and odd at the same time).

    What is printed when the following code runs?

    .. sourcecode:: python

        num = 7

        if num % 2 == 0:
            if num % 2 == 1:
                print("odd")
