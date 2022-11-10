> # Single-Method Programs Design Recipe
> 
> ## 1. Describe the Problem
> 
> User wants to keep track of their tasks 
> Requested a programme to check if a text includes their "#TODO" string 
> 
> ## 2. Design the Method Signature
> 
> The signature of a method includes:
> 
> * The name of the method: to_do 
> * What parameters it takes, their names and data types: string containing text, may contain numbers etc.
> * What it returns and the data type of that value: Boolean value, will not count number of ToDos - ie. 4 lots of "#TODO" would be treated the same as one occurance 
> * Any other side effects it might have.
> 
> Steps 3 and 4 then operate as a cycle:
> 
> ## 3. Create Examples as Tests
> 
> _Test one_
>
> * Text contains an empty string. Result: FALSE
>
> _Test two_
>
> * Text contains a string that **doesn't** contain #TODO. Result: FALSE
> 
>  _Test three_
>
> * Text contains a string that **does** contain #TODO. Result: TRUE
>
>  _Test four_
>
> * Text contains a string that contains #TODO **twice**. Result: TRUE (purpose - make sure it doenst count )
>
>  _Test five_
>
> * Text contains a string that contains TODO (no hash). Result: FALSE 
>
>  _Test six_
>
> * Text contains a string that contains #todo (hash, lowercase). Result: FALSE 
>
>  _Test seven_
>
> * Text contains a string that contains #todo nested within another word (eg he#TODOllo). Result: TRUE
>
>  _Test eight_
>
> * All instances of #TODO have a separate word nested within it. (eg: #ThelloODO) Result: FALSE

> ## 4. Implement the Behaviour
> 
> For each example you create as a test, implement the behaviour that allows the
> method to return the right value for the given arguments.
> 
> Then return to step 3 until you have addressed the problem you were given. You
> may also need to revise your design, for example if you realise you made a
> mistake earlier.

<!-- As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO. -->