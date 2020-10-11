2# Challenge

Complete the function in the challenge.rb file

The function converts a string and converts it to an html tag.
The first characters will be hashtags, the number of the <hx> will be according to the number of hashtags at the beginning of the string.
At most there can only be 6 #, if you have more, you must return the string "Wrong input".
If there is any character other than a hashtag up to the first space, the string "Wrong input" must be returned.
The text of the tag must be separated by a space after the hashtags, everything after this space will be considered text within the tag.
There should be no spaces between the beginning and the end of the text, remove them if necessary.
If there is no text after the hashtags, an empty string must be returned.
If the function receives an empty string, it must return an empty string.

Examples:
Input => "### The stunning world in which I am discovering"
Output => "<h3>The stunning world in which I am discovering</h3>"

Input => "####### The stunning world in which I am discovering"
Output => "Wrong input"
