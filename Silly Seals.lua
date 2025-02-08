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
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

Tabs.Main:AddButton({
    Title = "Anti Ban",
    Description = "Protects you from Bans",
    Callback = function()
        local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function sendLocalChatMessage(message)
    local chatService = game:GetService("StarterGui")
    chatService:SetCore("ChatMakeSystemMessage", {
        Text = message;
        Color = Color3.fromRGB(0, 255, 0); -- Green color
        Font = Enum.Font.SourceSansBold;
        TextSize = 18;
    })
end

-- Example: Call this function when a button is clicked
sendLocalChatMessage("Anti Ban enabled")
    end
})

