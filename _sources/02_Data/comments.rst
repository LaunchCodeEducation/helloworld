Documenting your code with comments
:::::::::::::::::::::::::::::::::::

As programs get bigger and more complicated, they get more difficult to read. Formal languages are dense, and it is often difficult to look at a piece of code and figure out what it is doing, or why. For this reason, it is a good idea to add notes to your programs to explain in natural language what the program is doing. These notes are called comments.

A **comment** in a computer program is text that is intended only for the human reader - it is completely ignored by the interpreter. In Python, the `#` token starts a comment. The rest of the line is ignored. Here is a new version of *Hello, World!*.

.. activecode:: ch02_comments_1

    # This demo program shows off how elegant Python is!
    print("Hello, World!")

Notice that when you run this program, it still only prints the phrase "Hello, World!"" None of the comments appear. You'll also notice that we've left a blank line in the program. Blank lines are also ignored by the interpreter, but comments and blank lines can make your programs much easier for humans to parse. Use them liberally!

**Check your understanding**

.. mchoice:: question2__comments_1
   :answer_a: To tell the computer what you mean in your program.
   :answer_b: For the people who are reading your code to know, in natural language, what the program is doing.
   :answer_c: Nothing, they are extraneous information that is not needed.
   :answer_d: Nothing in a short program. They are only needed for really large programs.
   :correct: b
   :feedback_a: Comments are ignored by the computer.
   :feedback_b: The computer ignores comments. It’s for the humans that will “consume” your program.
   :feedback_c: Comments can provide much needed information for anyone reading the program.
   :feedback_d: Even small programs benefit from comments.

   What are comments for?
