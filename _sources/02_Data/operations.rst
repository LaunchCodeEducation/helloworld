Operators and operands
----------------------

Data and variables are only useful if we are able to do things with them: combine, add, change, etc. In this lesson, we'll focus on a few operations that can be carried out with integers, floats, and strings. There are others that we won't cover here, but these will get you a long way.

**Operators** are special tokens that represent computations like addition, multiplication and division. The values the operator works on are called **operands**.

The following are all legal Python expressions whose meaning is more or less clear::

    20 + 32
    hour - 1
    hour * 60 + minute
    minute / 60
    5 ** 2
    (5 + 9) * (15 - 7)

The tokens ``+``, ``-``, and ``*``, and the use of parenthesis for grouping, mean in Python what they mean in mathematics. The asterisk (``*``) is the token for multiplication, and ``**`` is the token for exponentiation. Addition, subtraction, multiplication, and exponentiation all do what you
expect.

.. activecode:: ch02_operations_1
    :nocanvas:

    print(2 + 3)
    print(2 - 3)
    print(2 * 3)
    print(2 ** 3)
    print(3 ** 2)

When a variable name appears in the place of an operand, it is replaced with the value that it refers to before the operation is performed. For example, what if we wanted to convert 645 minutes into hours. In Python, division is denoted by the operator token ``/`` which always evaluates to a floating point result.

.. activecode:: ch02_operations_2
    :nocanvas:

    minutes = 645
    hours = minutes / 60
    print(hours)

The **modulus operator**, sometimes also called the **remainder operator** or **integer remainder operator** works on integers (and integer expressions) and yields the remainder when the first operand is divided by the second. In Python, the modulus operator is a percent sign (``%``). The syntax is the same as for other operators.

.. activecode:: ch02_operations_4
    :nocanvas:

    remainder = 7 % 3
    print(remainder)


In the above example, 7 divided by 3 is 2 when we use integer division and there is a remainder of 1.

The modulus operator turns out to be surprisingly useful. For example, you can check whether one number is divisible by another---if ``x % y`` is zero, then ``x`` is divisible by ``y``. This can be used, in particular, to determine whether an integer is even or odd. If ``x % 2`` is zero, then ``x`` is even. If ``x % 2`` is 1, then ``x`` is odd. Note that ``x % y`` will always be an integer between 0 and ``y - 1``. (Why?)

You can also use ``%`` to extract the right-most digit or digits from a number.  For example, ``x % 10`` yields the right-most digit of ``x`` (in base 10). Similarly ``x % 100`` yields the last two digits.

Finally, returning to our time example, the remainder operator is extremely useful for doing conversions, say from seconds, to hours, minutes and seconds. If we start with a number of seconds, say 7684, the following program uses integer division and remainder to convert to an easier form.  Step through it to be sure you understand how the division and remainder operators are being used to compute the correct values.

.. codelens:: ch02_operations_5

    total_secs = 7684
    hours = total_secs // 3600
    secs_still_remaining = total_secs % 3600
    minutes =  secs_still_remaining // 60
    secs_finally_remaining = secs_still_remaining  % 60


**Check your understanding**

.. mchoice:: test_question2_6_1
   :answer_a: 4.5
   :answer_b: 5
   :answer_c: 4
   :answer_d: 2
   :correct: a
   :feedback_a: The / operator does exact division and returns a floating point result.
   :feedback_b: The / operator does exact division and returns a floating point result.
   :feedback_c: The / operator does exact division and returns a floating point result.
   :feedback_d: The / operator does exact division and returns a floating point result.

   What value is printed when the following statement executes?

   .. code-block:: python

      print(18 / 4)



.. mchoice:: test_question2_6_2
   :answer_a: 4.25
   :answer_b: 5
   :answer_c: 4
   :answer_d: 2
   :correct: c
   :feedback_a: - The // operator does integer division and returns an integer result
   :feedback_b: - The // operator does integer division and returns an integer result, but it truncates the result of the division.  It does not round.
   :feedback_c: - The // operator does integer division and returns the truncated integer result.
   :feedback_d: - The // operator does integer division and returns the result of the division on an integer (not the remainder).

   What value is printed when the following statement executes?

   .. code-block:: python

      print(18 // 4)


.. mchoice:: test_question2_6_3
   :answer_a: 4.25
   :answer_b: 5
   :answer_c: 4
   :answer_d: 2
   :correct: d
   :feedback_a: The % operator returns the remainder after division.
   :feedback_b: The % operator returns the remainder after division.
   :feedback_c: The % operator returns the remainder after division.
   :feedback_d: The % operator returns the remainder after division.

   What value is printed when the following statement executes?

   .. code-block:: python

      print(18 % 4)
