Printing
::::::::

We have been using the `print` function without explicitly talking about how it works. Let's do that now.

Here are some ways that we've used the `print` function to print data so far.

.. activecode:: ch02_print_examples

    print("Hello, Python!")
    print(42)

In the first line, we print some text (what we'll soon learn is formally called a **string**). In the second line, we print a number (what we'll soon learn is formally called an **integer**).

.. warning::

    There are two versions of Python in common use: Python 2 and Python 3. The vast majority of the things we'll discuss in this course are the same in both Python 2 and Python 3. The notable exceptions are printing and prompting for user input, which is discussed at the end of this chapter.

    **We are using Python 3.** If you look at references online, be mindful that you'll see different syntax for using the `print` function when looking at a Python 2 reference.

Let's look at a few more examples of printing, and make some observations.

.. activecode:: ch02_print_more_examples

    print("hey!")
    print("hey", "yourself!")
    print("LaunchCode was founded in", 2013)
    print("2 + 2 =", 2 + 2)
    print("Launch" + "Code")

.. note:: **Observations, line by line**


    1. We print a single piece of text (i.e. strings), surrounded by quotes. This is no different than what we've seen previously.
    2. We print two strings, separated by a comma, both within the same pair of parentheses. When these print, they show up on the same line, separated by a space. This space *does not* have anything to do with the space after the comma, which may be removed without affecting the way the code behaves. (Don't just trust me; try it!)
    3. Similar to line 2, but we print a string and an integer. Again, a space is inserted.
    4. Similar to line 3, but in the second "slot" we have a formula, ``2 + 2``. Notice that this formula is evaluated before it is printed, so the printed result is the number ``4``. In general, using `print` with a formula is valid, and the result of the formula or operation will be printed.
    5. When printing two strings at once in line 2, we separated them with a comma and a space was inserted. To print two strings back-to-back (i.e. concatenated) without a space in between, we should join them with a `+`.

One final observation that applies to all of the examples above is that each time we use `print`, a **newline** is inserted after the printed content. Think of a newline as the equivalent of hitting the Enter or Return key on your keyboard. The cursor is moved to the beginning of the next line. From the perspective of the computer, or of a programmer, an invisible character is inserted to tell the computer to start placing text on the next line. In fact, it's possible to utilize this invisible character via the special representation ``\n``.

.. activecode:: ch02_newline

    print("LaunchCode Hubs, Circa Fall 2016:")
    print("St. Louis\nMiami\nRhode Island\nKansas City")

.. admonition:: Practice

    LaunchCode has been awarded a grant to expand to a new city, and *you* get to decide which one! Add one more city to the output, printing it on a new line. You may do this in any way that you wish, and there are multiple ways to do it.

We won't use this much, if at all, in this course, but it helps illustrate just how newlines work, and that ``print`` is inserting them for us each time we use it.
