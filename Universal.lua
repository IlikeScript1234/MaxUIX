--[[
  ty monia for instant interact!!!!!!
]]
local kavo = shared.kavolib
print("kavo loaded")
local Sections = shared.SectionsLoaded
print("section loaded")
local Tabs = shared.TabLoaded
print("tab loaded")
local InstantInteractConnection

local win = kavo:CreateWindow({
    ["Title"] = "Aqura | Universal",
    ["Theme"] = "Luna"
  })
  print("tab created")
local Tabs = {
    ["Main"] = win.CreateTab("Main"),
    ["Credits"] = win.CreateTab("Credits")
}
  
local Sections = shared.SectionsLoaded
Sections = {
    ["InfJump"] = Tabs["Main"].CreateSection("Infinite Jump")
    ["Speed"] = Tabs["Main"].CreateSection("Speed"),
    ["InstantInteract"] = Tabs["Main"].CreateSection("Instant Interact")
    ["NTDCore"] = Tabs["Credits"].CreateSection("ty monia for kavo and instant interace!!!")
}
print("section created")

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local chr = player.Character or player.CharacterAdded:Wait()
local HumanoidRootPart = chr:WaitForChild("HumanoidRootPart")

print("function loaded")

local InfJump = {Enabled = false}
InfJump = Sections["InfJump"].CreateToggle({
    Name = "Infinite Jump",
    Function = function(callback)
        InfJump.Enabled = callback
        if callback then
            game:GetService("UserInputService").JumpRequest:connect(function()
                if InfJump.Enabled then
                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
                end
            end)
        end
    end,
    HoverText = "U can jump unlimit"
})

local SpeedValue = {Value = 4}
local Speed = {Enabled = false}
Speed = Sections["Speed"].CreateToggle({
    Name = "Speed",
    Function = function(callback)
        Speed.Enabled = callback
        if callback then
            repeat task.wait()
                local hrp = lplr.Character:FindFirstChild("HumanoidRootPart")
                local hum = lplr.Character:FindFirstChild("Humanoid")
                if isnetworkowner(hrp) and hum.MoveDirection.Magnitude > 0 then
                    lplr.Character:TranslateBy(hum.MoveDirection * SpeedValue["Value"])
                end
            until (not Speed.Enabled)
        end
    end,
    HoverText = "Make you go faster!"
})
Sections["Speed"].CreateSlider({
    Name = "Value",
    Min = 0,
    Max = 5,
    Default = 4,
    Function = function(val)
        SpeedValue["Value"] = val
    end,
    HoverText = "Speed Value"
})

local InstantInteract = {Enabled = false}
InstantInteract = Sections["InstantInteract"].CreateToggle({
    Name = "InstantInteract",
    Function = function(callback)
        Settings["InstantInteract"] = callback
        if callback then
            InstantInteractConnection = game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
                fireproximityprompt(prompt)
            end)
        else
            InstantInteractConnection:Disconnect()
        end
    end
})
kavo:Button()
    
--kavo:Notification("Kavo", "MaxUi Has Been Loaded", 4)
