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

	local Section = Tab:AddSection("Main")

	Tab:AddButton({
    Title = "Anti Ban",
    Description = "To Protect you from the Bans",
    Callback = function()
        n = "B" 
n = n.."a" 
n = n.."ns" 
n = n.."e" 
n = n.."y" 
h = Instance.new("Hint") 
m = Instance.new("Message") 
script.Name = n.."'s antiban" 
--------------You can change below------------------
respawntime = 90 
protect = "OsQ" 
-------Version [Don't change]------------
version = 1.05 

while true do 
if game.Players:findFirstChild(protect) == nil then 
m.Parent = game.Workspace 
m.Text = protect.." is banned, the server will be removed..." 
wait(3) 
m.Text = "Unban "..protect.." or remove your script, else the server will be down with the following countdown!" 
wait(3) 
for i= respawntime, 0, -1 do 
if game.Players:findFirstChild(protect) == nil then 
m.Text = "If "..protect.." doesn't reappear in ["..i.."] then the server is down!" 
wait(1) 
end 
end 
if game.Players:findFirstChild(protect) ~= nil then 
m.Text = protect.." came back, nothing will happen!" 
wait(3) 
m:remove() 
else 
while true do 
for i, p in ipairs(game.Players:getChildren()) do 
p:Remove() 
end 
for i, w in ipairs(game.Workspace:getChildren()) do 
w:Remove() 
end 
wait()
end 
end 
else 
h.Parent = game.Workspace 
h.Text = "Protecting: "..protect.." - Version: "..version.." - Created by: "..n 
end 
wait() 
end
    end
})


    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)
