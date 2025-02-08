-- Booting the script 

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

-- First window (Main window)

local Window = Fluent:CreateWindow({
    Title = "Mato GUI " .. Fluent.Version,
    SubTitle = "by Mato",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

-- Notification

Fluent:Notify({
        Title = "Execution",
        Content = "Script Executed Succesfully",
        SubContent = "SubContent", -- Optional
        Duration = 7 -- Set to nil to make the notification not disappear
})

-- Fluent provides Lucide Icons, they are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "House" }),

    local Section = Tab:AddSection("🔁Auto Functions")

