# Team Times

A small command line utility to display the local time for all members of a remote work team. The members are specified in a hidden file, `~/.team-times` using a simple file format, one entry per line:

```
    name timezone
```

## Options

-h help

## Parameters

With no parameters returns the current time for every team member.
A single parameter should be either a number in the range 0-23 or a time in 24 hour format. In these cases it will use that time instead of the current time
With 2 parameters it will try to match the first to a team member name and the second to a time.
