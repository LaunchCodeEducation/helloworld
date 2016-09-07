Introduction to conditionals
::::::::::::::::::::::::::::

A **conditional statement** allows us to write code that can make decisions. Thus far, we've only written code that followed a top-down script. Each and every line was executed in order.

Suppose we are given the following real-world directive:

.. admonition:: Example 3.1

    Go to the grocery store. If they have bananas, buy one bunch. Otherwise, buy apples.

Given what we know thus far, we don't have a way to structure such types of statements in code. There are two possible actions that may be carried out. However, only one of them will actually happen, depending on what we find when we arrive at the store. We will *either* buy apples or bananas. There is no scenario under which we will buy both.

When programming, we can code such scenarios using conditional statements. Here's an example closer to what we've been working with in Python.

.. admonition:: Example 3.2

    Ask the user for an integer. If the integer is even, print "whiz!" If the integer is odd, print "bang!"

We have most of the tools at our disposal to code this scenario. Let's give it a shot.

.. activecode:: ch_03_1

    # prompt the user for a number and convert the string to an int
    user_submission = input("Enter an integer: ")
    user_submission = int(user_submission)

    # we don't know how to print only one of these, so...print both?
    print("whiz!")
    print("bang!")


Obviously, this doesn't work as desired. Let's introduce conditionals, and then we'll be able to properly code this solution.

.. sourcecode:: python

    if CONDITION:
        # code block no. 1
    else:
        # code block no. 2

.. note::

    - ``CONDITION`` here is a placeholder for Python code that will be either ``True`` or ``False``
    - Only *one of* block 1 or 2 will be executed, depending on the ``CONDITION``. If the condition is ``True``, then block 1 executes. If it is ``False``, then block 2 executes.
    - We sometimes call each of the ``if`` and ``else`` portions of code a **branch**.
    - Within each branch, you can have multiple lines of code, as long as they are properly indented.
    - There are ways to build more complicated conditionals, with more than one test/condition. We won't look at those in this course.

We will spend the rest of this chapter getting familiar with the details of conditionals, but before we do that, let's fix our example from above.

.. activecode:: ch_03_2

    # prompt the user for a number and convert the string to an int
    user_submission = input("Enter an integer: ")
    user_submission = int(user_submission)

    if user_submission % 2 == 0:    # user_submission is even
        print("whiz!")
    else:                           # user_submission is odd
        print("bang!")


We did pull a quick trick here, using ``==`` (double-equals) before learning what this operator does. This is one of the topics of our next section, which dives into creating conditions (i.e. tests for True/False) in Python.
