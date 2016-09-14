Prompting for user input
::::::::::::::::::::::::

Consider the following program, which adds two numbers and prints the result.

.. activecode:: ch2_sum

    first_number = 6
    second_number = 7
    sum = first_number + second_number
    print("The sum of the two numbers is:", sum)

This is fine, but it only works to add the two specific numbers, ``6`` and ``7``, that we specifically placed in our code. What if we wanted to rewrite the program so that it was more general? What if we wanted to be able to add any two numbers that the user gave us?

In order to do this, we need a way to get **input** from the user. Luckily, in Python there is a built-in function to accomplish this task. As you might expect, it is called ``input``. Here's an example:

.. sourcecode:: python

    n = input("Please enter your name: ")

The input function allows the user to provide a **prompt string**. When the function is evaluated, the prompt is shown. The user of the program can enter the name and press `return`. When this happens the text that has been entered is returned from the `input` function, and in this case assigned to the variable `n`. Make sure you run this example a number of times and try some different names in the input box that appears.

.. activecode:: inputfun

    n = input("Please enter your name: ")
    print("Hello", n)

It is very important to note that the ``input`` function returns a string value. Even if you asked the user to enter their age, you would get back a string like ``"17"``. It would be your job, as the programmer, to convert that string into an int or a float, using the ``int`` or ``float`` converter functions we saw earlier.

To modify our previous program, we will add an input statement to allow the user to enter the number of seconds. Then we will convert that string to an integer. From there the process is the same as before. To complete the example, we will print some appropriate output.

.. activecode:: int_secs

    str_seconds = input("Please enter the number of seconds you wish to convert")
    total_secs = int(str_seconds)

    hours = total_secs // 3600
    secs_still_remaining = total_secs % 3600
    minutes =  secs_still_remaining // 60
    secs_finally_remaining = secs_still_remaining  % 60

    print("Hrs=", hours, "mins=", minutes, "secs=", secs_finally_remaining)


The variable ``str_seconds`` will refer to the string that is entered by the user. As we said above, even though this string may be ``7684``, it is still a string and not a number. To convert it to an integer, we use the ``int`` function. The result is referred to by ``total_secs``. Now, each time you run the program, you can enter a new value for the number of seconds to be converted.

Let's revisit our first example of adding two numbers and printing their sum. We now know enough to modify the program so that it accepts user input. We have tried to use this new behavior in the code below, but there's still a problem. Run the code, diagnose the error, and modify it to work as expected.

.. activecode:: ch2_sum_redux

    first_number = input("Enter the first number: ")
    second_number = input("Enter the second number: ")
    sum = first_number + second_number
    print("The sum of the two numbers is:", sum)

.. warning::

    As with `print`, `input` works differently in Python 2 than it does in Python 3. Use this section as a reference, and know that if you look at sites discussing Python 2, you'll see a different method for getting user input.

**Check your understanding**

.. mchoice:: test_question2_7_1
   :answer_a: &lt;class 'str'&gt;
   :answer_b: &lt;class 'int'&gt;
   :answer_c: &lt;class 18&gt;
   :answer_d: 18
   :correct: a
   :feedback_a: All input from users is read in as a string.
   :feedback_b: Even though the user typed in an integer, it does not come into the program as an integer.
   :feedback_c: 18 is the value of what the user typed, not the type of the data.
   :feedback_d: 18 is the value of what the user typed, not the type of the data.

   What is printed when the following statements execute?

   .. code-block:: python

     n = input("Please enter your age: ")
     # user types in 18
     print ( type(n) )
