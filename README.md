# lovelytimers
Timer library for Love2D.

# Methods
```.update( (number) dt )```
Mandatory method. Updates all current timers.

```.new( (string) id, (number) delay, (number) repetitions, (function) func )```
Creates a new timer.
| Argument             | Description                                                                   |
|----------------------|-------------------------------------------------------------------------------|
| (string) id          | The ID of the timer. Note: no two timers can have the same exact ID.          |
| (number) delay       | How long each repetition lasts.                                               |
| (number) repetitions | How many times the timer repeats itself before automatically deleting itself. |
| (function) func      | The function the timer runs every time a repetition is successfully counted.  |

Returns: ```(table)``` the timer itself OR ```(nil)``` if a timer w/ an identical ID was found.

```.getAll()```<br>Returns: ```(table)``` table of all ongoing timers.

```.getTimer( (string) id )```<br>Returns: ```(table)``` the timer with the given ID if found OR ```(nil)``` if no timer was found.

```.pause( (string) id )```
Pauses the timer with the given ID if found.<br>Returns: ```(bool)``` true if the method ran successfully OR ```(bool)``` false if the timer w/ the given ID was not found.

```.resume( (string) id )```
Resumes the timer with the given ID if found.<br>Returns: ```(bool)``` true if the method ran successfully OR ```(bool)``` false if the timer w/ the given ID was not found.

```.rewind( (string) id, (bool, optional) pause )```
Fully resets the timer with the given ID if found. Optionally pauses the timer if the ```pause``` argument is true.<br>Returns: ```(bool)``` true if the method ran successfully OR ```(bool)``` false if the timer w/ the given ID was not found.

```.destroy( (string) id )```
Gets rid of the timer with the given ID if found.<br>Returns: ```(bool)``` true if the method ran successfully OR ```(bool)``` false if the timer w/ the given ID was not found.
