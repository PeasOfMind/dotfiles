-- Spectacle-like window management
hs.loadSpoon("Lunette")
customBindings = {
  leftHalf = {
    {{"alt", "ctrl"}, "left"},
  },
  rightHalf = {
    {{"alt", "ctrl"}, "Right"},
  },
  topHalf = {
    {{"alt", "ctrl"}, "Up"},
  },
  bottomHalf = {
    {{"alt", "ctrl"}, "Down"},
  },
  fullScreen = {
    {{"alt", "ctrl"}, "F"},
  },
  center = {
    {{"alt", "ctrl"}, "C"},
  },
  topLeft = {
    {{"ctrl", "cmd"}, "Left"},
  },
  topRight = {
    {{"ctrl", "cmd"}, "Right"},
  },
  bottomLeft = {
    {{"ctrl", "shift","cmd"}, "Left"},
  },
  bottomRight = {
    {{"ctrl", "shift","cmd"}, "Right"},
  },
  nextThird = {
    {{"ctrl", "alt", "shift"}, "Right"},
  },
  prevThird = {
    {{"ctrl", "alt", "shift"}, "Left"},
  },
  undo = false,
  redo = false
}

spoon.Lunette:bindHotkeys(customBindings)
