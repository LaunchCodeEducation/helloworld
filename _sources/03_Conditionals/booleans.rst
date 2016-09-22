Boolean values and expressions
::::::::::::::::::::::::::::::

The Python type for storing true and false values is called ``bool``, named after the British mathematician, George Boole. George Boole created *Boolean Algebra*, which is the basis of all modern computer arithmetic.

There are only two **boolean values**. They are ``True`` and ``False``. Capitalization is important, since ``true`` and ``false`` are not boolean values (remember Python is case sensitive).

.. activecode:: ch05_1

    print(True)
    print(type(True))
    print(type(False))

.. note:: Boolean values are not strings!

    It is extremely important to realize that True and False are not strings. They are not surrounded by quotes. They are the only two values in the data type ``bool``. Take a close look at the types shown below.


.. activecode:: ch05_1a

    print(type(True))
    print(type("True"))

A **boolean expression** is an expression that evaluates to a boolean value. The equality operator, ``==``, compares two values and produces a boolean value related to whether the two values are equal to one another.

.. activecode:: ch05_2

    print(5 == 5)
    print(5 == 6)

In the first statement, the two operands are equal, so the expression evaluates to ``True``. In the second statement, 5 is not equal to 6, so we get ``False``.

The ``==`` operator is one of six common **comparison operators**; the others are:

.. sourcecode:: python

    x != y               # x is not equal to y
    x > y                # x is greater than y
    x < y                # x is less than y
    x >= y               # x is greater than or equal to y
    x <= y               # x is less than or equal to y

Although these operations are probably familiar to you, the Python symbols are different from the mathematical symbols. A common error is to use a single equal sign (``=``) instead of a double equal sign (``==``). Remember that ``=`` is an assignment operator and ``==`` is a comparison operator. Also, there is no such thing as ``=<`` or ``=>``.

.. With reassignment it is especially important to distinguish between an
.. assignment statement and a boolean expression that tests for equality.
.. Because Python uses the equal token (``=``) for assignment,
.. it is tempting to interpret a statement like
.. ``a = b`` as a boolean test. Unlike mathematics, it is not!  Remember that the Python token
.. for the equality operator is ``==``.

.. sourcecode:: python

    b = (6 == 7)
    print(b)

.. mchoice:: test_question6_1_1

    :answer_a: 6 == 7
    :answer_b: False
    :answer_c: True
    :answer_d: It will give an error message
    :correct: b
    :feedback_a: Try again - that is not a string.
    :feedback_b: Correct! This equality test evaluates to False.
    :feedback_c: Try again - reevaluate the equality test.
    :feedback_d: Try again - this code will not produce an error message.

    What will this program print?



Note too that an equality test is symmetric, but assignment is not. For example, if ``a == 7`` then ``7 == a``. But in Python, the statement ``a = 7`` is legal and ``7 = a`` is not. (Can you explain why?)

.. sourcecode:: python

    n = 8
    m = 10
    print(n == m, m == n)

.. mchoice:: test_question6_1_1
    :answer_a:  True
                False
    :answer_b:  False
                True
    :answer_c:  True
                True
    :answer_d:  False
                False
    :answer_e: It will give an error message.
    :correct: d
    :feedback_a: Try again! Does the order matter in an equality test?
    :feedback_b: Try again! Does the order matter in an equality test?
    :feedback_c: Try again! Reevaluate the equality test.
    :feedback_d: Correct! Equality tests are symmetric.
    :feedback_e: Try again - this code will not produce an error.

    What will the above program print?


.. mchoice:: test_question6_1_3
   :multiple_answers:
   :answer_a: True
   :answer_b: 3 == 4
   :answer_c: 3 + 4
   :answer_d: 3 + 4 == 7
   :answer_e: &quot;False&quot;
   :correct: a,b,d
   :feedback_a: True and False are both Boolean literals.
   :feedback_b: The comparison between two numbers via == results in either True or False (in this case False),  both Boolean values.
   :feedback_c:  3 + 4 evaluates to 7, which is a number, not a Boolean value.
   :feedback_d: 3 + 4 evaluates to 7. 7 == 7 then evaluates to True, which is a Boolean value.
   :feedback_e: With the double quotes surrounding it, False is interpreted as a string, not a Boolean value. If the quotes had not been included, False alone is in fact a Boolean value.

   Which of the following is a Boolean expression?  Select all that apply.
