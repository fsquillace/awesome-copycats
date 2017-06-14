local gears         = require("gears")
local beautiful     = require("beautiful")

local helpers = {}

-- {{{ Wallpaper
function helpers.set_fixed_wallpaper(s)
    -- Wallpaper
    if beautiful.wallpaper then
        local wallpaper = beautiful.wallpaper
        -- If wallpaper is a function, call it with the screen
        if type(wallpaper) == "function" then
            wallpaper = wallpaper(s)
        end
        gears.wallpaper.maximized(wallpaper, s, true)
    end
end

function helpers.set_random_wallpaper(s)
    local wallpapers = {
        os.getenv("HOME") .. "/.config/awesome/themes/blackburn/wall.png",
        os.getenv("HOME") .. "/.config/awesome/themes/copland/wall.png",
        os.getenv("HOME") .. "/.config/awesome/themes/dremora/wall.png",
        os.getenv("HOME") .. "/.config/awesome/themes/holo/wall.png",
        os.getenv("HOME") .. "/.config/awesome/themes/multicolor/wall.png",
        os.getenv("HOME") .. "/.config/awesome/themes/powerarrow/wall.png",
        os.getenv("HOME") .. "/.config/awesome/themes/rainbow/wall.png",
        os.getenv("HOME") .. "/.config/awesome/themes/steamburn/wall.png",
        os.getenv("HOME") .. "/.config/awesome/themes/vertex/wall.png",
        "/usr/share/awesome/themes/default/background.png",
        "/usr/share/awesome/themes/default/background_white.png",
        "/usr/share/awesome/themes/zenburn/zenburn-background.png",
    }
    math.randomseed(os.time());
    local wallpaper = wallpapers[math.random(1, #wallpapers)]
    gears.wallpaper.maximized(wallpaper, s, true)
end

-- }}}

return helpers
