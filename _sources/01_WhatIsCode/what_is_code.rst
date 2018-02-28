What is code?
:::::::::::::

Computers are dumb, understanding not an ounce of context or intended meaning, and only reacting mechanically to the instructions that we give them. If our instructions are even the slightest bit off, they are unable decipher context and adjust accordingly, and come to a grinding halt. But how do we give computers instructions in the first place? Via code. **Code is a set of instructions for a computer to follow.**

What code can do
~~~~~~~~~~~~~~~~

Here is a short, non-comprehensive list of the types of tasks that we can carry out with code:

**Interact** with other systems. Through code, we can interact with resources that are outside of our program. For example, we can read data in from a file or database on our computer, or we can ask a server on the other side of the planet for information.

**Repeat** tedious tasks. Have a few thousand emails to send? Need to spellcheck several thousand words? You can do these things with just a handful of code.

**Reuse** useful code snippets. Rather than copy/paste a section of code that we want to use in multiple places, we'll be able to assign a name to such a snippet, allowing us to use it wherever we like by simply referring to its name. We do this mentally all the time.

For example, somebody might say to you, "Go to the grocery store an buy some bananas," this week, and next week, "Go to the grocery store and buy some cereal." The phrase "go to the grocery store" is an understood shorthand for the long list of detailed steps required to go to the grocery store. These would look something like: "Walk out the front door, get in the car, travel west on Miami Street until you reach Gravois,..." If we had to repeat the long-form directions each time we wanted to give somebody instructions, our lives would be slow, boring, and unproductive. Such is the case with code.

**Decide** what to do, based on the current state. When we write code, we will often need to carry out one task under a specific set of circumstances, and another task if circumstances differ. We don't need to predict all possible sets of circumstances and write code for each. Instead, we can accommodate differing sets of conditions.

Here's an example: "Go to the grocery store and buy bananas. If they're out of bananas, buy apples." Here, we provide instructions for multiple possible scenarios. We'll be able to formalize such decision-making in our code. (What happens if the store is out of apples too? Turns out code will let us deal with such complexities in a variety of ways, as we'll learn.)

What is a programming language?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To write code, you must first choose a programming language. There are literally hundreds of programming languages available. Here are a few examples of the Hello, World! program that we saw earlier.

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

A programming language is a collection of rules that specify one method of giving instructions to a computer. These rules are commonly referred to as *syntax rules*, or simply *syntax*.

Syntax and semantics in programming
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The examples above each carry the same semantic meaning, with different syntax. They print the message "Hello, World!" to the screen. Yet they are formally different, because they are written in different languages. Programming languages are just that: *collections of syntax rules that allow a programmer to instruct a computer.*

When writing code, we are able to separate the intent, or end result, of a program from the formal rules used to create the program. A single problem may be solved in nearly any programming language. And beyond that, the atomic steps we take to solve a problem can be separated, in most cases, from the programming language. Actions such as *repeat action X 15 times* or *prompt the user for a username and password until we have a match* can be carried out with the same types of structures in most programming languages. Thus, the choice of a language is often separate from the steps required to carry out a task.

Choosing a programming language
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Why choose one programming language over another, then? There are often very good reasons to choose on programming language over another, but that reason is rarely that a problem *can only* be solved with a particular language, or that it *can not* be solved by a particular language. Most often, the reasoning boils down to how hard it may be to solve a problem with one language over another.

In our current situation, we'll be learning Python. Why? Aside from the fact that Python is a widely-used flexible language with lots of great tools available for a variety of tasks, it is also good for educational purposes. Python is a simpler language to teach and learn than most, and comes closer to replicating human language than most other languages.

In 2015 writer, businessman, and programmer Paul Ford wrote a wonderful article title, "What Is Code?". It is `available online`_. While we recommend reading this article at some point -- it is wildly illuminating and entertaining for coding novices and professionals alike -- we also caution to give yourself plenty of time to take it in, as it clocks in at nearly 40,000 words.

In lieu of reading the full article, this video provides a nice summary.

.. raw:: html

    <div style="text-align:center;">
    <iframe src="https://player.vimeo.com/video/130987431?title=0&byline=0&portrait=0" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
    </div>

.. _`available online`: http://www.bloomberg.com/graphics/2015-paul-ford-what-is-code/
