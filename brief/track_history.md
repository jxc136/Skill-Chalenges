<!-- As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them. -->

## Introduction

To design single-class programs we need to update our design recipe. Here is
the updated recipe:

> # Single-Class Programs Design Recipe
> 
> ## 1. Describe the Problem
> 
> ### User Story 
>
> "As a user
> So that I can keep track of my music listening
> I want to add tracks I've listened to and see a list of them."
> 
> ### Requirements 
> 
> Programme with one class, containing 3 methods:
> * Add a track
> * See a list of added tracks 
> * Initialize 
> 
> ### Considerations 
>
> This will require an array, that sits within an instance variable 

> ## 2. Design the Class Interface
> 
> The interface of a class includes:

```Ruby 

class Song_Tracker

  def initialize 
  # Contains the tracklist array
  end 

  def add (track)
  # adds the track to our tracklist array. Accepts a string 
  end 

  def display 
  # Return the track list array, containing strings 
  end 

end 

```
> 
> ## 3. Create Examples as Tests
>

```Ruby

# 1 - Adds a single word track, returns track within our array

song_tracker = Song_Tracker.new
song_tracker.add("hello")
song_tracker.display  # => ["hello]

# 2 - Raises error if empty string is provided in add method

song_tracker = Song_Tracker.new
song_tracker.add("") # => raises error

# 3 - Remove any whitespace before an after a song submission 
song_tracker = Song_Tracker.new
song_tracker.add(" spacey  ")
song_tracker.display # => ["spacey"]


# 4 - Will not add duplicate entries 
song_tracker = Song_Tracker.new
song_tracker.add("once")
song_tracker.add("Death of a Bachelor")
song_tracker.add("Hotel California")
song_tracker.add("once")
song_tracker.display # => ["once]

# 5 -  Add method used multiple times, array displays that many entries 

song_tracker = Song_Tracker.new 
song_tracker.add("The End of the World")
song_tracker.add("Yellow Submarine")
song_tracker.add("Fly Me to the Moon")
song_tracker.display # => ["The End of the World", "Yellow Submarine", "Fly Me to the Moon"]


```
> 
<!-- > These are examples of the class being used with different initializer
> arguments, method calls, and how it should behave.
> 
> For complex challenges you might want to come up with a list of examples first
> and then test-drive them one by one. For simpler ones you might just dive
> straight into writing a test for the first example you want to address. -->
> 
> ## 4. Implement the Behaviour
> 
> For each example you create as a test, implement the behaviour that allows the
> class to behave according to your example.
> 
> At this point you may wish to apply small-step test-driving to manage the
> complexity. This means you only write the minimum lines of the example to get
> the test to fail (red), then make it pass (green) and refactor, before adding
> another line to the test until it fails, then continue.
> 
> Then return to step 3 until you have addressed the problem you were given. You
> may also need to revise your design, for example if you realise you made a
> mistake earlier.
