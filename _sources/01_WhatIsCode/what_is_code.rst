What is code?
:::::::::::::

Computers are dumb, understanding not an ounce of context or intended meaning, and only reacting mechanically to the instructions that we give me.T If our instructions are even the slightest bit off, they are unable decipher context and adjust accordingly, and come to a grinding halt. But how do we give computers instructions in the first place? Via code. **Code is a set of instructions for a computer to follow.**

To write code, you must first choose a programming language. There are literally hundreds of programming languages to choose from. Here are a few examples of the Hello, World! program that we saw earlier.

We didn't specify this before, but in our first program, we chose to use the programming language Python, which we'll be using for the duration of this course. Here it is again:

.. code-block:: python

    print("Hello, World!")

And here is the same program in a few other common languages:

**PHP**

.. code-block:: php

    <?php echo "Hello, World!"; ?>

**C++**

.. code-block:: cpp

    #include <iostream>

    int main()
    {
        std::cout << "Hello, World!";
    }

**Java**

.. code-block:: java

    public class Hello {
    	public static void main(String []args) {
    		System.out.println("Hello, World!");
    	}
    }

**JavaScript**

.. code-block:: js

    console.log("Hello, World!");


These examples all carry the same semantic meaning, with different syntax. They print the message "Hello, World!" to the screen. Yet they are formally different, because they are written in different languages. Programming languages are just that: *collections of syntax rules that allow a programming to instruct a computer.*

When writing code, we are able to separate the intent, or end result, of a program from the formal rules used to create the program. A single problem may be solved in nearly any programming language. And beyond that, the atomic steps we take to solve a problem can be separated, in most cases, from the programming language. Actions such as *repeat action X 15 times* or *prompt the user for a username and password until we have a match* can be carried out with the same types of structures in most programming languages. Thus, the choice of a language is often separate from the steps required to carry out a task.

Why choose one programming language over another, then? There are often very good reasons to choose on programming language over another, but that reason is rarely that a problem *can only* be solved with a particular language, or that it *can not* be solved by a particular language. Most often, the reasoning boils down to how hard it may be to solve a problem with one language over another.

In our current situation, we'll be learning Python. Why? Aside from the fact that Python is a widely-used flexible language with lots of great tools available for a variety of tasks, it is also good for educational purposes. Python is a simpler language to teach and learn than most, and comes closer to replicating human language than most other languages.

.. raw:: html

    <div style="text-align:center;">
    <iframe src="https://player.vimeo.com/video/130987431?title=0&byline=0&portrait=0" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
    </div>
