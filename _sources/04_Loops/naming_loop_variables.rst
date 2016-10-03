Naming loop variables
:::::::::::::::::::::

We have talked a few times about the importance in using good variables names. One area in which badly chosen variable names can be particularly confusing, and even lead to coding errors, is that of loop variables. Even experienced programmers frequently make poor choices about variable names in loops. Since you're just beginning to code, developing good habits now will go a long way toward preventing bad habits from cropping up later.

Here's an example of very poor choice of variable names in a loop.

.. sourcecode:: python

    sum = 0
    for i in [18, 4.5, 3, 3, 6]:
        sum = sum + i

    average = sum / 5

This loop seems to be adding up a list of numbers so we can compute their average. But what are we averaging? What do the number represent? A better way to write this code would be as follows.

.. sourcecode:: python

    total_miles_run = 0
    runs_this_week = [18, 4.5, 3, 3, 6]

    for daily_mileage in runs_this_week:
        total_miles_run = total_miles_run + daily_mileage

    average_daily_mileage = total_miles_run / 5

Now it's more apparent that we're calculating the average length of a run during one week of training (for a marathon, most likely). In general, using ``i`` for a variable name when there's a contextually better choice is discouraged. (Sometimes we'll use ``i`` for an abstract example, or to demonstrate syntax.)

Here's another example of poor variable name choice.

.. sourcecode:: python

    list = ["Rosa", "Alex", "Brendan", "Zach"]
    for names in list:
        print(names, "was one of the first employees to work at LaunchCode")

There are two variables here, and both are poorly named. ``list`` is a poor choice because it doesn't describe the contents of the list. What is the list being used to store? A variable named simply ``list`` might be thought to contain numbers, booleans, or other data.

``names`` is used here as the list iterator variable. The word ``name`` is descriptive, but to use the plural version for a variable that will only ever hold a single name is confusing and potentially misleading.

Here's a better version.

.. sourcecode:: python

    employees = ["Rosa", "Alex", "Brendan", "Zach"]
    for employee in employees:
        print(employee, "was one of the first employees to work at LaunchCode")

This pattern of paring the plural and singular form of a noun is a common one in Python, and gets the point across nicely.

**Check Your Understanding**

.. sourcecode:: python

    grocery_list = ["bananas", "bread", "flour", "orange juice", "milk"]

    for ___ in grocery_list:
        print(___)

.. mchoice:: test_question3_5_0
    :multiple_answers:
    :answer_a: 0) item
    :answer_b: 1) food
    :answer_c: 2) groceries
    :answer_d: 3) things
    :answer_e: 4) i
    :correct: a,b
    :feedback_a: Yes, this could work as a variable name
    :feedback_b: Yes, this one would be the most descriptive - but others are correct as well
    :feedback_c: The items in the list are groceries, but the iterator is a singular entity so should not be plural
    :feedback_d: The iterator is a singular entity that iterates through each item in the list, representing one at a time.
    :feedback_e: If there is a contextually better name, avoid using ``i`` as an iterator variable name

    In the following code, choose all variable names that would be appropriate for the iterator.
