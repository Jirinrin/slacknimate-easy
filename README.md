# Easier slacknimate

## To use:
- Put this folder somewhere and include it in your PATH
- Put slacknimate-easy.bat in the same folder
- Create a `temp/` folder in this Slacknimate folder
- How to call it: `slacknimate-easy %animation% %channel% %delay%`
  - `%animation%` should be delimited by quote chars (`'`/`"`) if it has spaces; use the `&` char between animation frames
  - `%channel%` is the channel name with `#` in front or the channel identifyer when you get the last part of `right click channel => Copy Link` 
  - `%delay` can be excluded; it is defined in seconds

Extra info:
- It is probably best to clean your `temp/` folder every once in a while.
- There is a hidden feature where you can make the animation `"_"` and then it will open an empty txt file with visual studio code.

## TODO
- Make option to have it automatically open the generated txt file so that you can put the frames in there, and then upon closing continue the programme