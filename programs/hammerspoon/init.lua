-- Spoon installation manager
hs.loadSpoon("SpoonInstall")
spoon.SpoonInstall.repos.lunette = {
  url = "https://github.com/scottwhudson/Lunette",
  desc = "Spectacle-like window manager",
}
spoon.SpoonInstall.use_syncinstall = true

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

-- Install and/or set up the Lunette window manager
spoon.SpoonInstall:andUse("Lunette",
  {
    repo = "lunette",
    hotkeys = customBindings
  }
)

chromeBrowser = "com.google.Chrome"
-- Install and/or set up URLDispatcher
spoon.SpoonInstall:andUse("URLDispatcher",
  {
    config = {
      default_handler = "com.brave.Browser",
      url_patterns = {
        { "https?://meet%.google%.com", chromeBrowser }
      }
    },
    start = true
  }
)

-- Install and use ClipboardTool
spoon.SpoonInstall:andUse("ClipboardTool", {
  start = true,
  hotkeys = {
    toggle_clipboard = { { "cmd", "shift"}, "v" }
  }
})
