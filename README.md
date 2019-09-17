# Easier slacknimate

This uses the exe from [Slacknimate](https://github.com/mroth/slacknimate)  
and was built to make using it a bit simpler (rather than having to manually create a txt file with the animation in it and sending that to StdIn etc)

## To use:
- Put this folder somewhere and include it in your PATH
- Also generate a slack token and put it in the SLACK_TOKEN environment variable, as per the instructions in the Slacknimate repo
- To use the 'file edit' version:
  - Set the %VSCODE_EXE% environment variable (it opens up Visual Studio Code as editor)
  - Call with `slacknimate-easy %channel% %delay%`
  - Input the animation in the editor, save and close
- To use the inline command version:
  - Call with `_slacknimate-easy %animation% %channel% %delay%`
    - `%animation%` should be delimited by quote chars (`'`/`"`) if it has spaces; use the `&` char between animation frames
  - (But this one is crap with unicode stuff like kaomoji and chinese chars etc)
- Extra arg info:
  - `%channel%` is the channel name with `#` in front or the channel identifier when you get the last part of `right click channel => Copy Link` 
  - `%delay` can be excluded; it is defined in seconds

Extra info:
- It is probably best to clean your `temp/` folder every once in a while.
- It seems that the process starting VS code doesn't work in powershell or cmd.exe?

## TODO
- Allow editing an existing message...?!!
