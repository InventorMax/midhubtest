local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("CumHub", "Serpent")
local Tab = Window:NewTab("Admin Type Scripts")
local Section = Tab:NewSection("Scripts")


Section:NewButton("Infinite Yield", "loads infiniteyield", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    
    local CoreGui = game:GetService("StarterGui")
    CoreGui:SetCore("SendNotification", {
        Title = "Loaded";
        Text = "Script has been successfully loaded";
        Duration = 5;
    })

end)

Section:NewButton("Rem X", "loads Rem X", function ()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Henry887/RemX-Script-Hub/main/main.lua'),true))()
    
    local CoreGui = game:GetService("StarterGui")
    CoreGui:SetCore("SendNotification", {
        Title = "Loaded";
        Text = "Script has been successfully loaded";
        Duration = 5;
    })

end)

local Tab = Window:NewTab("FE Scripts")
local Section = Tab:NewSection("Scripts")

Section:NewButton("FE Zombie", "loads Fe Zombie some hats are needed    ", function ()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/someunknowndude/18f1d979ad9a25ad69064be75f55f735/raw/dc36f1e9ad906a7434bd77bcd0ce8218fb5f4d88/zombie.lua"))()

    local CoreGui = game:GetService("StarterGui")
    CoreGui:SetCore("SendNotification", {
        Title = "Loaded";
        Text = "Script has been successfully loaded";
        Duration = 5;
    })

end)

Section:NewButton("Fe", "description here", function ()

    

    local CoreGui = game:GetService("StarterGui")
    CoreGui:SetCore("SendNotification", {
        Title = "Loaded";
        Text = "Script has been successfull loaded";
        Duration = 5;
    })
    
end)

local Tab = Window:NewTab("Troll Scripts")
local Section = Tab:NewSection("Scripts")

Section:NewButton("Universal Invis", "loads Universal Invis",  function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/UniversalInvis.lua", true))()
   
    local CoreGui = game:GetService("StarterGui")
    CoreGui:SetCore("SendNotification", {
        Title = "Loaded";
        Text = "Script has been successfully loaded";
        Duration = 5;
    })

end)

Section:NewButton("Player Orbit", "loads Player Orbit", function ()
    
_G.Enable = true --Toggle
_G.Speed = "0" --Increases/Decreases Circle Speed
_G.range = "2" --Increases/Decreases Circle Range

--Modify If You Want
local players = game:GetService("Players")
while _G.Enable do
    local closestPlayer = nil
    local shortestDistance = math.huge

    for i, player in ipairs(players:GetPlayers()) do
        if player ~= players.LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance =
                (player.Character.HumanoidRootPart.Position - players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if distance < shortestDistance then
                closestPlayer = player
                shortestDistance = distance
            end
        end
    end

    if closestPlayer then
        local rootCFrame = players.LocalPlayer.Character.HumanoidRootPart.CFrame
        local targetCFrame = closestPlayer.Character.HumanoidRootPart.CFrame
        for i = 1, 360 do
            local angle = math.rad(i)
            local x = math.sin(angle) * _G.range
            local z = math.cos(angle) * _G.range
            local offset = Vector3.new(x, 0, z)
            local newCFrame = targetCFrame + offset
            players.LocalPlayer.Character.HumanoidRootPart.CFrame = newCFrame
            task.wait(_G.Speed)
        end
    end
end

    local CoreGui = game:GetService("StarterGui")
    CoreGui:SetCore("SendNotification", {
        Title = "Loaded";
        Text = "Script has been successfully loaed";
        Duration = 5;
    })

end)


local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Credits:")

Section:NewTextBox("Made by:", "if u are seeing this ur gay", function (txt)
    print(txt)
end)


local Tab = Window:NewTab("Gui Customization")
local Section = Tab:NewSection("Colours")

local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}

for theme, color in pairs(colors) do
    Section:NewColorPicker(theme, "Change your "..theme, color, function(color3)
        Library:ChangeColor(theme, color3)
    end)
end

Section:NewColorPicker("Color Text", "Doesnt even do shit its just a place holder", Color3.fromRGB(0,0,0), function(color)
    -- This callback function will be executed when the "Color Text" option is used
    -- You can add any additional logic here, if needed
end)



