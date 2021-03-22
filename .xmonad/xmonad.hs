import System.IO
import System.Exit
-- import System.Taffybar.Hooks.PagerHints (pagerHints)
import qualified Data.List as L
import XMonad
import XMonad.Actions.Navigation2D
import XMonad.Actions.UpdatePointer
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.SetWMName
import XMonad.Hooks.EwmhDesktops (ewmh)
import XMonad.Layout.Gaps
import XMonad.Layout.Fullscreen
import XMonad.Layout.BinarySpacePartition as BSP
import XMonad.Layout.NoBorders
import XMonad.Layout.Tabbed
import XMonad.Layout.ThreeColumns
import XMonad.Layout.Spacing
import XMonad.Layout.MultiToggle
import XMonad.Layout.MultiToggle.Instances
import XMonad.Layout.NoFrillsDecoration
import XMonad.Layout.Renamed
import XMonad.Layout.Simplest
import XMonad.Layout.SubLayouts
import XMonad.Layout.WindowNavigation
import XMonad.Layout.ZoomRow
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Util.Cursor
import Graphics.X11.ExtraTypes.XF86
import qualified XMonad.StackSet as W
import qualified Data.Map        as M

myTerminal = "alacritty"

-- myScreensaver = "dm-tool switch-to-greeter"

-- mySelectScreenshot = "select-screenshot"

-- myScreenshot = "xfce4-screenshooter"

-- myLauncher = "rofi -show"

myWorkspaces = ["Display1", "Display2", "Display3"]

myManageHook = composeAll
  [
    className =? "Steam"                        --> doCenterFloat
    , className =? "OxygenNotInclud"              --> doFullFloat
    , isFullscreen                              --> (doF W.focusDown <+> doFullFloat)
    , isFullscreen                              --> doFullFloat
  ]

myModMask = mod4Mask
  
myFocusFollowsMouse :: Bool
myFocusFollowsMouse = True

main = xmonad $ ewmh $ defaults
defaults = def {
  terminal           = myTerminal,
  focusFollowsMouse  = myFocusFollowsMouse,
  -- borderWidth        = myBorderWidth,
  modMask            = myModMask,
  workspaces         = myWorkspaces,
  -- normalBorderColor  = myNormalBorderColor,
  -- focusedBorderColor = myFocusedBorderColor,
  -- keys               = myKeys,
  -- mouseBindings      = myMouseBindings,
  -- layoutHook         = myLayout,
  handleEventHook    = fullscreenEventHook,
  manageHook         = manageDocks <+> myManageHook
  -- startupHook        = myStartupHook
}
