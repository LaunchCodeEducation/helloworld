Values and data types
:::::::::::::::::::::

A **value** is one of the fundamental things --- like a word or a number --- that a program manipulates. The values we have seen so far are ``5`` (the result when we added ``2 + 3``), and ``"Hello, World!"``.

These values are classified into different **data types**: ``4`` is an *integer*, and ``"Hello, World!"`` is a *string*, so-called because it contains a string or sequence of letters. You (and the interpreter) can identify strings because they are enclosed in quotation marks.

If you are not sure what data type a value falls into, Python has a function called **type** which can tell you.

.. activecode:: ch02_1
    :nocanvas:

    print(type("Hello, World!"))
    print(type(17))
    print("Hello, World")

We're told that ``17`` is an ``int`` and ``"Hello, World!"`` is a ``str``. The types ``int`` and ``str`` are Python's internal designation for integer and string.

.. note::

	When we show the value of a string using the ``print`` function, such as in the third example above, the quotes are no longer present. The value of the string is the sequence of characters inside the quotes. The quotes are only necessary to help Python know what the value is.


Numbers with a decimal point are of type **float**, because these numbers are represented in a format called
*floating-point*.

.. activecode:: ch02_2
    :nocanvas:

    print(type(3.2))


What about values like ``"17"`` and ``"3.2"``? They look like numbers, but they are in quotation marks like strings.

.. activecode:: ch02_3
    :nocanvas:

    print(type("17"))
    print(type("3.2"))

They're strings!

Strings in Python can be enclosed in either single quotes (``'``) or double
quotes (``"``), or three of each (``'''`` or ``"""``).

.. activecode:: ch02_4
    :nocanvas:

    print(type('This is a string.') )
    print(type("And so is this.") )
    print(type("""and this.""") )
    print(type('''and even this...''') )


Double quoted strings can contain single quotes inside them, as in ``"Bruce's beard"``, and single quoted strings can have double quotes inside them, as in ``'The knights who say "Ni!"'``. Strings enclosed with three occurrences of either quote symbol are called triple quoted strings. They can contain either single or double quotes:

.. activecode:: ch02_5
    :nocanvas:

    print('''"Oh no", she exclaimed, "Ben's bike is broken!"''')



Triple quoted strings can even span multiple lines:

.. activecode:: ch02_6
    :nocanvas:

    message = """This message will
    span several
    lines."""
    print(message)

    print("""This message will span
    several lines
    of the text.""")

Python doesn't care whether you use single or double quotes or the three-of-a-kind quotes to surround your strings. Once it has parsed the text of your program or command, the way it stores the value is identical in all cases, and the surrounding quotes are not part of the value.

.. activecode:: ch02_7
    :nocanvas:

    print('This is a string.')
    print("""And so is this.""")

So the Python language designers usually chose to surround their strings by single quotes. What do you think would happen if the string already contained single quotes?

When you type a large integer, you might be tempted to use commas between groups of three digits, as in ``42,000``. This is not a legal integer in Python, but it does mean something else, which is legal:

.. activecode:: ch02_8
    :nocanvas:

    print(42000)
    print(42,000)


Well, that's not what we expected at all! Because of the comma, Python chose to treat this as a *pair* of values. In fact, the print function can print any number of values as long as you separate them by commas. Notice that the values are separated by spaces when they are displayed.

.. activecode:: ch02_8a
    :nocanvas:

    print(42, 17, 56, 34, 11, 4.35, 32)
    print(3.4, "hello", 45)

Remember not to put commas or spaces in your integers, no matter how big they are. Also recall what we pointed out in the previous chapter: programming languages of strict syntax rules, and even the smallest change might mean something quite different from what you intended.

**Check your understanding**

.. mchoice:: test_question2_1_1
   :answer_a: Print out the value and determine the data type based on the value printed.
   :answer_b: Use the type function.
   :answer_c: Use it in a known equation and print the result.
   :answer_d: Look at the declaration of the variable.
   :correct: b
   :feedback_a: You may be able to determine the data type based on the printed value, but it may also be  deceptive, like when a string prints, there are no quotes around it.
   :feedback_b: The type function will tell you the class the value belongs to.
   :feedback_c: Only numeric values can be used in equations.
   :feedback_d: In Python variables are not declared.

   How can you determine the type of a variable?

.. mchoice:: test_question2_1_2
   :answer_a: Character
   :answer_b: Integer
   :answer_c: Float
   :answer_d: String
   :correct: d
   :feedback_a: It is not a single character.
   :feedback_b: The data is not numeric.
   :feedback_c: The value is not numeric with a decimal point.
   :feedback_d: Strings can be enclosed in single quotes.

   What is the data type of 'this is what kind of data'?

Type conversion functions
-------------------------

Sometimes it is necessary to convert values from one type to another. Python provides a few simple functions that will allow us to do that. The functions ``int``, ``float`` and ``str`` will (attempt to) convert their arguments into types `int`, `float` and `str` respectively. We call these **type conversion** functions.

The ``int`` function can take a floating point number or a string, and turn it into an int. For floating point numbers, it *discards* the decimal portion of the number - a process we call *truncation towards zero* on the number line. Let us see this in action:

.. activecode:: ch02_9
   :nocanvas:

   print(3.14, int(3.14))
   print(3.9999, int(3.9999))       # This doesn't round to the closest int!
   print(3.0, int(3.0))
   print(-3.999, int(-3.999))        # Note that the result is closer to zero

   print("2345", int("2345"))        # parse a string to produce an int
   print(17, int(17))                # int even works on integers
   print(int("23bottles"))


The last case shows that a string has to be a syntactically legal number, otherwise you'll get one of those pesky runtime errors. Modify the example by deleting the ``bottles`` and rerun the program. You should see the integer ``23``.

The type converter ``float`` can turn an integer, a float, or a syntactically legal string into a float.

.. activecode:: ch02_10
   :nocanvas:

   print(float("123.45"))
   print(type(float("123.45")))


The type converter ``str`` turns its argument into a string. Remember that when we print a string, the quotes are removed. However, if we print the type, we can see that it is definitely `str`.

.. activecode:: ch02_11
   :nocanvas:

   print(str(17))
   print(str(123.45))
   print(type(str(123.45)))

**Check your understanding**

.. mchoice:: test_question2_2_1
  :answer_a: Nothing is printed. It generates a runtime error.
  :answer_b: 53
  :answer_c: 54
  :answer_d: 53.785
  :correct: b
  :feedback_a: The statement is valid Python code. It calls the int function on 53.785 and then prints the value that is returned.
  :feedback_b: The int function truncates all values after the decimal and prints the integer value.
  :feedback_c: When converting to an integer, the int function does not round.
  :feedback_d: The int function removes the fractional part of 53.785 and returns an integer, which is then printed.

  What value is printed when the following statement executes?

  .. code-block:: python

     print( int(53.785) )
