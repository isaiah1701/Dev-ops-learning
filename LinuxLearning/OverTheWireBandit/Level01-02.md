# Level 01 ? 02

## ?? Objective

The password for the next level is stored in a file called - located in the home directory

## ?? Commands Used
ls , cat 
\\\ash
# your commands here
cat ./-



## ?? Notes

What did I learn?
I learned that when a file is named -, using cat - won’t work because - is treated as standard input. To read it, you need to reference it as a literal file using ./- or cat -- -.

Any new command/tool?
Not a new command, but a new usage of cat with -- to handle tricky filenames.

Anything tricky?
Yes — I initially thought cat - would read the file, but it just waited for input. Took a moment to realize the file’s name was clashing with shell behavior.

