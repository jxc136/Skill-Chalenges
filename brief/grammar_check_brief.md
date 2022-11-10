> # Single-Method Programs Design Recipe
> 
> ## 1. Describe the Problem
> 
> User wants to improve their grammar
> Programme should confirm if an inputted text starts with a capital letter and ends with a full-stop, question mark, or exclamation mark.
> 
> ## 2. Design the Method Signature
> 
> The signature of a method includes:
> 
> * The name of the method: grammar_check 
> * What parameters it takes, their names and data types: takes a single arguemnt as a string 
> * What it returns and the data type of that value: should return a Boolean that has evaluated if the first character is capitalised and if the last character is correctly punctuated
> * Any other side effects it might have: it must return false if a letter or non-grammatically correct punctuation is the final character, will not look for grammar errors beyond first and final chars 
> 
> Steps 3 and 4 then operate as a cycle.
> 
> ## 3. Create Examples as Tests
> 
> _Test Case One_ 
>  *  An empty string returns false 
> 
> _Test Case Two_ 
>  *  A 2 character string consisting of a capitalised letter as first character and a full stop returns True. 

> _Test Case Three_ 
>  *  A 2 character string consisting of a capitalised letter as first character and a question mark returns True. 

> _Test Case Four_ 
>  *  A 2 character string consisting of a capitalised letter as  first character and an exclamation mark mark returns True. 

> _Test Case Five_ 
>  *  A 2 character string consisting of a non-capitalised letter as first character and a full stop returns False. 

> _Test Case Six_ 
>  *  A 2 character string consisting of a capitalised letter as first character and a non capitalised letter as final character returns False. 

> _Test Case Seven_ 
>  *  A 2 character string consisting of a capitalised letter as first character and a grammatically incorrect final character returns False. 

> _Test Case Eight_ 
>  *  A string starting with a space, followed by a capital letter and ending with a full stop returns False. 

> _Test Case Nine_ 
>  *  A string starting with a capitalised letter as first character, ending with a full stop, but with an accidental space returns false

> ## 4. Implement the Behaviour
> 
> For each example you create as a test, implement the behaviour that allows the
> method to return the right value for the given arguments.
> 
> Then return to step 3 until you have addressed the problem you were given. You
> may also need to revise your design, for example if you realise you made a
> mistake earlier.





