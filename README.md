# Easier slacknimate

## To use:
- Put this folder somewhere and include it in your PATH
- To use the 'file edit' version:
  - Set the %VSCODE_EXE% environment variable 
  - Call with `slacknimate-easy %channel% %delay%`
- To use the inline command version:
  - Call with `_slacknimate-easy %animation% %channel% %delay%`
    - `%animation%` should be delimited by quote chars (`'`/`"`) if it has spaces; use the `&` char between animation frames
- Extra arg info:
  - `%channel%` is the channel name with `#` in front or the channel identifyer when you get the last part of `right click channel => Copy Link` 
  - `%delay` can be excluded; it is defined in seconds

Extra info:
- It is probably best to clean your `temp/` folder every once in a while.

## TODO
- Make option to have it automatically open the generated txt file so that you can put the frames in there, and then upon closing continue the programme