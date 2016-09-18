For-loop syntax revisited
:::::::::::::::::::::::::

The range Function
------------------

Right now, if we want something to happen four times (such as print Hello!), we can use a list of numbers as shown below:

.. sourcecode:: python

    for i in [0, 1, 2, 3]:
        print("Hello!")

We could put any four things in our list, and the loop would iterate four times. We could
even use strings to produce the same effect:

.. sourcecode:: python

    for i in ["Ross", "Rachel", "Chandler", "Phoebe"]:
        print("Hello!")


Even though you can use any four items, the conventional thing to do is to use a list of integers starting with 0. It turns out that generating lists with a specific number of integers is a very common thing to do, especially when you want to write simple for loop controlled iteration. In fact, these lists are so popular that Python gives us special built-in ``range`` objects that can deliver a sequence of values to the ``for`` loop. The sequence provided by ``range`` always starts with 0. If you ask for ``range(4)``, then you will get 4 values starting with 0: in other words, 0, 1, 2, and finally 3. Notice that 4 is not included since we started with 0. Likewise, ``range(10)`` provides 10 values, 0 through 9.


.. activecode:: ch03_5
    :nocanvas:

    print(range(4))
    print(range(10))

.. note::

    Computer scientists like to count from 0. Why in the world would the range function return lists that begin with 0? Think about it like this: ``range(N)`` produces a sequence of things that is N long, but the consequence of this is that the final number of the sequence is N-1. For instance, ``range(3)`` produces three numbers: 0, 1 and 2.


The `range <http://docs.python.org/py3k/library/functions.html?highlight=range#range>`_ function is a very powerful function when it comes to creating sequences of integers. It can take one, two, or three parameters. We have seen the simplest case of one parameter such as ``range(4)`` which creates ``[0, 1, 2, 3]``. But what if we really want to have the sequence ``[1, 2, 3, 4]``?


We can do this by using a two parameter version of ``range`` where the first parameter is the starting point and the second parameter is the ending point. The evaluation of ``range(1,5)`` produces the desired sequence.

But what happened to the 5? As was true in the examples above, the list given by range never includes its ending parameter. In this case we interpret the parameters of the range function to mean ``range(start,stop+1)``.

Here are two examples for you to run. Try them and then add another line below to create a sequence starting at 10 and going up to 20 (including 20).

.. activecode:: ch03_5
    :nocanvas:

    print(range(4))
    print(range(1, 5))

Since the range function generates lists, let's use it in a for loop. Let's go back to our earlier example:

.. sourcecode:: python

    #earlier version
    for i in [0, 1, 2, 3]:
        print("Hello!")

    #same result, using the range function
    for i in range(4):
        print("Hello!")


``range(4)`` generates the list ``[0, 1, 2, 3]``, so the two loops are doing exactly the same thing. Let's look at what is happening more closely: Codelens will help us to further understand the way range works. In this case, the variable ``i`` will take on values produced by the ``range`` function.


.. activecode:: rangeme

    for i in range(10):
        print(i)


Finally, suppose we want to have a sequence of even numbers. How would we do that?  Easy, we add another parameter, a step, that tells range what to count by. For even numbers we want to start at 0 and count by 2's. So if we wanted the first all even numbers less than 20 we would use ``range(0,19,2)``. The most general form of the range is ``range(start, stop+1, step)``. You can also create a sequence of numbers that starts big and gets smaller by using a negative value for the step parameter.


.. activecode:: ch03_6
    :nocanvas:

    print(range(0, 19, 2))
    print(range(0, 20, 2))
    print(range(10, 0, -1))

Try it in codelens.

.. codelens:: rangeme2

    for i in range(0, 20, 2):
       print(i)

**Check your understanding**

.. sourcecode:: python

    for i in range(1,7):
        print(i)

.. mchoice:: test_question3_5_0
    ..answer_a: [1, 2, 3, 4, 5, 6]
    ..answer_b: [1, 2, 3, 4, 5, 6, 7]
    ..answer_c: [1, 7, 14, 21, 28, 35, 42]
    ..answer_d: [0, 1, 2, 3, 4, 5, 6]
    ..answer_e: [0, 1, 2, 3, 4, 5, 6, 7]
    :correct: a
    :feedback_a: When given two arguments, the range returns a list beginning at the first argument, up to but not including the second argument.
    :feedback_b: The range returns a list that only goes up to N-1.
    :feedback_c: There is no third parameter specified for range, so it will step by 1.
    :feedback_d: The range returns a list starting at its first given parameter.
    :feedback_e: The range returns a list starting at its first given parameter.

    What list does the command ``range(1,7)`` return?

.. mchoice:: test_question3_5_1
    :answer_a: Range should generate a list that stops at 9 (including 9).
    :answer_b: Range should generate a list that starts at 10 (including 10).
    :answer_c: Range should generate a list starting at 3 that stops at 10 (including 10).
    :answer_d: Range should generate a list using every 10th number between the start and the stopping number.
    :correct: a
    :feedback_a: Range will generate the list [3, 5, 7, 9].
    :feedback_b: The first argument (3) tells range what number to start at.
    :feedback_c: Range will always stop at the number before (not including) the specified ending point for the list.
    :feedback_d: The third argument (2) tells range how many numbers to skip between each element in the list.

    In the command ``range(3, 10, 2)``, what does the second argument (10) specify?

.. mchoice:: test_question3_5_2
    :answer_a: range(2, 5, 8)
    :answer_b: range(2, 8, 3)
    :answer_c: range(2, 10, 3)
    :answer_d: range(8, 1, -3)
    :correct: c
    :feedback_a: This command generates the list [2] because the first number (2) tells range where to start, the second number tells range where to end (5, not inclusive) and the third number tells range how many numbers to skip between elements (8). Since 10>= 8, there is only one number in this list.
    :feedback_b: This command generates the list [2, 5] because 8 is not less than 8 (the specified ending number).
    :feedback_c: The first number is the starting point, the second is the maximum allowed, and the third is the amount to increment by.
    :feedback_d: This command generates the list [8, 5, 3] because it starts at 8, ends at (or above 1), and skips every third number going down.

    What command correctly generates the list [2, 5, 8]?

.. mchoice:: test_question3_5_3
    :answer_a: It will generate a list starting at 0, with every number included up to but not including the argument it was passed.
    :answer_b: It will generate a list starting at 1, with every number up to but not including the argument it was passed.
    :answer_c: It will generate a list starting at 1, with every number including the argument it was passed.
    :answer_d: It will cause an error: range always takes exactly 3 arguments.
    :correct: a
    :feedback_a: Yes, if you only give one number to range it starts with 0 and ends before the number specified incrementing by 1.
    :feedback_b: Range starts at 0 unless otherwise specified.
    :feedback_c: Range starts at 0 unless otherwise specified, and never includes its ending element (which is the argument it was passed).
    :feedback_d: If range is passed only one argument, it interprets that argument as the end of the list (not inclusive).

    What happens if you give range only one argument?  For example: ``range(4)``
