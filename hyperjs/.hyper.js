// Future versions of Hyper may add additional config options, which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
  config: {
    // terminal background color, opacity is only supported on macOS
    backgroundColor: "#000",

    // set to `false` for no bell, URL to custom bell bellSoundURL: "http://example.com/bell.mp3",
    bell: "SOUND",

    // border color (window, tabs)
    borderColor: "#333",

    // the full list. if you"re going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: "#000000",
      red: "#C51E14",
      green: "#1DC121",
      yellow: "#C7C329",
      blue: "#0056AB",
      magenta: "#C839C5",
      cyan: "#20C5C6",
      white: "#C7C7C7",
      lightBlack: "#686868",
      lightRed: "#FD6F6B",
      lightGreen: "#67F86F",
      lightYellow: "#FFFA72",
      lightBlue: "#6A76FB",
      lightMagenta: "#FD7CFC",
      lightCyan: "#68FDFE",
      lightWhite: "#FFFFFF"
    },

    // if `true` (without backticks and without quotes), on right click selected text will be copied or pasted if no
    // selection is present (`true` by default on Windows and disables the context menu feature)
    // quickEdit: true,
    copyOnSelect: true,

    // custom CSS to embed in the main window
    css: "",

    // terminal text color under BLOCK cursor
    cursorAccentColor: "#000",

    // set to `true` (without backticks and without quotes) for blinking cursor
    cursorBlink: "",

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: "rgba(248,28,229,0.8)",

    // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █
    cursorShape: "BLOCK",

    // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
    defaultSSHApp: true,

    // for environment variables
    env: {},

    fontFamily:
      "Menlo, 'DejaVu Sans Mono', Consolas, 'Lucida Console', monospace",

    fontSize: 7,

    fontWeight: "normal",

    fontWeightBold: "normal",

    // color of the text
    foregroundColor: "#fff",

    lineHeight: 1,

    letterSpacing: 0,

    // custom padding (CSS format, i.e.: `top right bottom left`)
    padding: "12px 14px 24px",

    // terminal selection color
    selectionColor: "rgba(248,28,229,0.3)",

    // custom CSS to embed in the terminal window
    termCSS: "",

    // if you're using a Linux setup which show native menus, set to false
    // default: `true` on Linux, `true` on Windows, ignored on macOS
    showHamburgerMenu: "",

    // set to `false` (without backticks and without quotes) if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` (without backticks and without quotes) on Windows and Linux, ignored on macOS
    showWindowControls: "",

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system"s login shell will be used by default
    //
    shell: "zsh",

    // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
    // by default `['--login']` will be used
    shellArgs: [ "--login" ],

    updateChannel: "stable",



    // Plugins configurations

    hypercwd: {
      initialWorkingDirectory: "~/"
    },

    hyperline: {
      plugins: [ "cpu", "memory", "network", "hostname", "ip" ]
    },

    init: [
      {
        rule: "once",
        commands: [
          "docker restart mysql redis",
          "docker ps",
        ]
      },
      {
        rule: "tabs",
        commands: [
          "tput reset",
        ]
      },
    ],

    paneNavigation: {
      debug: false,
      hotkeys: {
        navigation: {
          up: "ctrl+shift+up",
          down: "ctrl+shift+down",
          left: "ctrl+shift+left",
          right: "ctrl+shift+right"
        },
        jump_prefix: "ctrl+shift", // completed with 1-9 digits
        permutation_modifier: "shift", // Added to jump and navigation hotkeys for pane permutation
        maximize: "meta+enter"
      },
      showIndicators: true, // Show pane number
      indicatorPrefix: "Antares-", // Will be completed with pane number
      indicatorStyle: {
        // Added to indicator <div>
        fontSize: "10px",
        left: "10px",
        position: "absolute",
        top: 0,
      },
      focusOnMouseHover: true,
      inactivePaneOpacity: 0.6 // Set to 1 to disable inactive panes dimming
    },

    syncSettings: {
      quiet: false,
      accelerators: {
        checkForUpdates: "CmdOrCtrl+8"
      }
    },

    visor: {
      hotkey: "Super+Alt+Space",
      position: "bottom", // or left, right, bottom
      // width: 1500,   Optional, defaults to half of viewable area for horizontal positions, 100% for vertical
      height: 900 // Optional, defaults to half of viewable area for vertical positions, 100% for horizontal
    }
  },

  plugins: [
    "git-falcon9",
    "hyper-highlight-active-pane",
    "hyper-init",
    "hyper-pane",
    "hyper-sync-settings",
    "hypercwd",
    "hyperline",
    "hyperpower",
    "hyperterm-dibdabs",
    "hyperterm-visor",
    "shades-of-purple-hyper",
  ],

  // in development, you can create a directory under `~/.hyper_plugins/local/` and include it here to load it and avoid it
  // being `npm install`ed
  localPlugins: [],

  keymaps: {
    // Example
    // "window:devtools": "cmd+alt+o",
  }
};
