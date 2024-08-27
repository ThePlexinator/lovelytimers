# lovelytimers
Timer library for Love2D.

# Methods
```.update( (number) dt )```
Mandatory method. Updates all current timers.

```.new( (string) id, (number) delay, (number) repetitions, (function) func)```
Creates a new timer.
| Argument             | Description                                                                   |
|----------------------|-------------------------------------------------------------------------------|
| (string) id          | The ID of the timer. Note: no two timers can have the same exact ID.          |
| (number) delay       | How long each repetition lasts.                                               |
| (number) repetitions | How many times the timer repeats itself before automatically deleting itself. |
| (function) func      | The function the timer runs every time a repetition is successfully counted.  |

Returns: ```(table)``` the timer itself OR ```(nil)``` if a timer w/ an identical ID was found.
