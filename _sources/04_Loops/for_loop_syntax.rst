For loop syntax
:::::::::::::::::::


We were introduced to the concept of for loops in the last section. Let's break down the syntax a bit more.

.. image:: images/loop.png

.. note::

    for name in ["Joe", "Amy", "Brad", "Angelina", "Zuki", "Thandi", "Paris"]:
        print("Hi " + name + ", please come to my party on Saturday!")


Take a look at the output produced when you press the ``run`` button. There is one line printed for each friend. Here's how it works:


* **name** in this ``for`` statement is called the **loop variable**.
* The list of names in the square brackets is called a Python **list**. Lists are very useful. We will have much more to say about them later.
* Line 2  is the **loop body**. The loop body is always indented. The indentation determines exactly what statements are "in the loop". The loop body is performed one time for each name in the list.
* On each *iteration* or *pass* of the loop, first a check is done to see if there are still more items to be processed. If there are none left (this is called the **terminating condition** of the loop), the loop has finished. Program execution continues at the next statement after the loop body.
* If there are items still to be processed, the loop variable is updated to refer to the next item in the list. This means, in this case, that the loop body is executed here 7 times, and each time `name` will refer to a different friend.
* At the end of each execution of the body of the loop, Python returns to the ``for`` statement, to see if there are more items to be handled.
