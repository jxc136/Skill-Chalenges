
> # Single-Method Programs Design Recipe
> 
> ## 1. Describe the Problem
> 
> User wants a programme to measure how long it would take them to read any provided text. 
> 
> ## 2. Design the Method Signature
> 
> The signature of a method includes:
> 
> * The name of the method: read_speed
> * What parameters it takes, their names and data types: it will take a string of any length
> * What it returns and the data type of that value: The length of time it takes to read that text, in hours/minutes/seconds
> * Any other side effects it might have: It returns it to the user 
> 
> Steps 3 and 4 then operate as a cycle.
> 
> ## 3. Create Examples as Tests
>
> _Test Case One_ 
>
>  * For an empty string, it will return a result of 0 seconds (not outputting hours or minutes at all)
>
> _Test Case Two_ 
>  * Testing a string with less than 200 words: Ensuring a 100 word string takes 30 seconds to read 
>
> _Test Case Three_ 
>  * Testing a string with exactly 200 words: Ensuring it takes exactly a minute to read

> _Test Case Four_ 
>  * Testing a string above 200 words but below 400: Ensuring a 300 word string takes 1 minute 30 seconds to read

### For the purposes of avoiding unweildy code in this practice, tests for hours have been excluded, but they would be:

> _Test Case Five_ 
>  *  Testing a string with exactly 12000 words: Ensuring it takes exactly an hour to read

> _Test Case Six_ 
>  *  Testing a string above 12000 words but below 24000, that is not a multiple of 200 : Test for a string that displays hours and minutes and seconds 

> _Test Case Seven_ 
>  *  Testing a string that is between 12000 and 12199 words: Test for a string that displays hours and seconds but not minutes

> These are examples of the method being called with particular arguments, and
> what the method should return in each situation.
> 
> For complex challenges you might want to come up with a list of examples first
> and then test-drive them one by one. For simpler ones you might just dive
> straight into writing a test for the first example you want to address.
> 
> ## 4. Implement the Behaviour
> 
> For each example you create as a test, implement the behaviour that allows the
> method to return the right value for the given arguments.
> 
> Then return to step 3 until you have addressed the problem you were given. You
> may also need to revise your design, for example if you realise you made a
> mistake earlier.

----
NOTES 

# As a user
# So that I can manage my time
# I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

Requires - a method to measure reading time, accepts a string as an argument
         - a speed setting (for programme purposes speed is 200wpm)
         - Output should be in traditional "time" format - eg H/M/S