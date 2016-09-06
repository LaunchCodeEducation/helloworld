Executing Python in this book
-----------------------------

This book provides two special ways to execute Python programs. Both techniques are designed to assist you as you learn the Python programming language. They will help you increase your understanding of how Python programs work.


First, you can write, modify, and execute programs using a unique **activecode** interpreter that allows you to execute Python code right in the text itself (right from the web browser). Although this is certainly not the way real programs are written, it provides an excellent environment for learning a programming language like Python since you can experiment with the language as you are reading.

Take a look at the activecode interpreter in action. Try pressing the *run* button below.

.. activecode:: ch02_0

  print("This program adds two numbers, 2 and 3:")
  print(2 + 3)


Now try modifying the activecode program shown above. First, modify the string in the first print statement by changing the word *adds* to the word *multiplies*. Now press *run*. You can see that the result of the program has changed. However, it still prints "5" as the answer. Modify the second print statement by changing the addition symbol, the "+", to the multiplication symbol, "*". Press *run* to see the new results.

You can also make changes and save them for reloading later. *Save* and *Load* allow you to keep one copy of the program you are working on. For example, press the *Save* button now. You have just saved the current contents of the activecode window. Now make a few changes and press the *Run* button. You have changed the current program. Press *Load* to return your program to its previously saved state.

In addition to activecode, you can also execute Python code with the assistance of a unique visualization tool. This tool, known as **codelens**, allows you to control the step by step execution of a program. It also lets you see the values of all variables as they are created and modified. The following example shows codelens in action on the same program as we saw above. Note that in activecode, the source code executes from beginning to end and you can see the final result. In codelens you can see and control the step by step progress. Note that the red arrow always points to the next line of code that is going to be executed. The light green arrow points to the line that was just executed.


.. codelens:: firstexample
  :showoutput:

  print("My first program adds two numbers, 2 and 3:")
  print(2 + 3)


The examples in this book use a mixture of the standard Python interpreter, source code, activecode, and codelens. You will be able to tell which is which by looking for either the Python prompt in the case of a shell mode program, the *run* button for the activecode, or the *forward/backward* buttons for codelens.


**Check your understanding**

.. mchoice:: question2_1_1
  :multiple_answers:
  :answer_a: save programs and reload saved programs.
  :answer_b: type in Python source code.
  :answer_c: execute Python code right in the text itself within the web browser.
  :answer_d: receive a yes/no answer about whether your code is correct or not.
  :correct: a,b,c
  :feedback_a: You can (and should) save the contents of the activecode window.
  :feedback_b: You are not limited to running the examples that are already there. Try  adding to them and creating your own.
  :feedback_c: The activecode interpreter will allow you type Python code into the textbox and then you can see it execute as the interpreter interprets and executes the source code.
  :feedback_d: Although you can (and should) verify that your code is correct by examining its output, activecode will not directly tell you whether you have correctly implemented your program.

  The activecode interpreter allows you to (select all that apply):

.. mchoice:: question2_1_2
  :multiple_answers:
  :answer_a: measure the speed of a program’s execution.
  :answer_b: control the step by step execution of a program.
  :answer_c: write and execute your own Python code.
  :answer_d: execute the Python code that is in codelens.
  :correct: b,d
  :feedback_a: In fact, codelens steps through each line one by one as you click, which is MUCH slower than the Python interpreter.
  :feedback_b: By using codelens, you can control the execution of a program step by step. You can even go backwards!
  :feedback_c: Codelens works only for the pre-programmed examples.
  :feedback_d: By stepping forward through the Python code in codelens, you are executing the Python program.

  Codelens allows you to (select all that apply):
