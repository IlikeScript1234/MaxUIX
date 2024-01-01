print("universal real")
local kavo = shared.kavolib
print("library loaded")
local Sections = shared.SectionsLoaded
local Tabs = shared.TabLoaded
print("section and tabs loaded")



--[[

local win = kavo:CreateWindow({
    ["Title"] = "Aqura | Work At a Pizza Place",
    ["Theme"] = "Luna"
  })
  print("win created")
Tabs = {
    ["Main"] = win.CreateTab("Main"),
    ["Credits"] = win.CreateTab("Credits")
}
  print("tab created")

Sections = {
    ["InfJump"] = Tabs["Main"].CreateSection("Infinite Jump")
    ["Speed"] = Tabs["Main"].CreateSection("Speed"),
    ["InstantInteract"] = Tabs["Main"].CreateSection("Instant Interact")
    ["NTDCore"] = Tabs["Credits"].CreateSection("ty monia for kavo and instant interact!!!")
}
print("section created")
print("test universal1")



local Players = game:GetService("Players")
local player = Players.LocalPlayer
local chr = player.Character or player.CharacterAdded:Wait()
local HumanoidRootPart = chr:WaitForChild("HumanoidRootPart")
local InstantInteractConnection

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

]]
