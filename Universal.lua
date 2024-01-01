print("universal v4")
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

--[[
    ["Speed"] = Tabs["Main"].CreateSection("Speed"),
    ["InstantInteract"] = Tabs["Main"].CreateSection("Instant Interact"),
]]
local Sections = {
    ["InfJump"] = Tabs["Main"].CreateSection("Infinite Jump")
    ["NTDCore"] = Tabs["Credits"].CreateSection("ty monia for kavo and instant interact!!!")
}
print("All Function Loaded")
print("function loaded")
wait(1)
    local InfiniteJumpConnection
	local InfiniteJump = {Enabled = false}
	InfiniteJump = Sections["InfJump"].CreateToggle({
		Name = "InfiniteJump",
		Function = function(callback)
			if callback then
				spawn(function()
					InfiniteJumpConnection = InputService.JumpRequest:connect(function(jump)
						game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
					end)
				end)
			else
				InfiniteJumpConnection:Disconnect()
			end
		end
	})
    kavo:Button()
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

    
--kavo:Notification("Kavo", "MaxUi Has Been Loaded", 4)

