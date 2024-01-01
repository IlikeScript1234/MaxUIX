print("universal v1")
local kavo = loadstring(game:HttpGet("https://raw.githubusercontent.com/IlikeScript1234/MaxUIX/main/Libraries/kavo.lua"))()
print("library loaded")
print("section and tabs loaded")
wait(1)
local win = kavo:CreateWindow({
    ["Title"] = "Aqura | Universal",
    ["Theme"] = "Luna"
  })
  print("win created")
local Tabs = {
    ["Main"] = win.CreateTab("Main"),
    ["Credits"] = win.CreateTab("Credits")
}
  print("tab created")

local Sections = {
    ["InfJump"] = Tabs["Main"].CreateSection("Infinite Jump")
    ["Speed"] = Tabs["Main"].CreateSection("Speed"),
    ["InstantInteract"] = Tabs["Main"].CreateSection("Instant Interact"),
    ["NTDCore"] = Tabs["Credits"].CreateSection("ty monia for kavo and instant interact!!!")
}
print("All Function Loaded")
print("function loaded")
wait(1)
local Humanoid =  game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
local InfJump = {Enabled = false}
InfJump = Sections["InfJump"].CreateToggle({
    Name = "Infinite Jump",
    Function = function(callback)
        InfJump.Enabled = callback
        if callback then
            game:GetService("UserInputService").JumpRequest:connect(function()
                if InfJump.Enabled then
                   Humanoid:ChangeState("Jumping")
                end
            end)
        end
    end,
    HoverText = ""
})
--[[
local SpeedValue = {Value = 14}
local Speed = {Enabled = false}
Speed = Sections["Speed"].CreateToggle({
    Name = "Speed",
    Function = function(callback)
        Speed.Enabled = callback
        if callback then
            repeat task.wait()
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = SpeedValue["Value"]
            until (not Speed.Enabled)
        end
    end,
    HoverText = "Make you go faster!"
})
Sections["Speed"].CreateSlider({
    Name = "Value",
    Min = 0,
    Max = 100,
    Default = 14,
    Function = function(val)
        SpeedValue["Value"] = val
    end,
    HoverText = "Speed Value"
})
    --]]
local InstantInteractConnection
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

print("all modules loaded")
kavo:Button()
    
--kavo:Notification("Kavo", "MaxUi Has Been Loaded", 4)

