local kavo = shared.kavolib
local Sections = shared.SectionsLoaded
local Tabs = shared.TabLoaded
local FunctionsLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/NTDCore/NightbedForRoblox/main/Libraries/FunctionsHandler.lua"))()
local name = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local win = kavo:CreateWindow({
    ["Title"] = "MaxUi X | ".. name,
    ["Theme"] = "Luna"
  })
  
local Tabs = {
    ["Main"] = win.CreateTab("Main"),
    ["Credits"] = win.CreateTab("Credits")
}
  
local Sections = shared.SectionsLoaded
Sections = {
    ["AutoFarm"] = Tabs["Main"].CreateSection("AutoFarm"),
    ["Speed"] = Tabs["Main"].CreateSection("Speed"),
    ["NTDCore"] = Tabs["Credits"].CreateSection("Monia: Argstable Lib, Cfgs, theme")
}

local networkownertick = tick()
local isnetworkowner = isnetworkowner or function(part)
  if gethiddenproperty(part, "NetworkOwnershipRule") == Enum.NetworkOwnership.Manual then 
      sethiddenproperty(part, "NetworkOwnershipRule", Enum.NetworkOwnership.Automatic)
      networkownertick = tick() + 8
  end
  return networkownertick <= tick()
end

local AutoFarm = {Enabled = false}
AutoFarm = Sections["AutoFarm"].CreateToggle({
    Name = "AutoFarm",
    Function = function(callback)
        AutoFarm.Enabled = callback
        if callback then
            repeat task.wait(0.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-96.7800674, 4.99999905, -524.685425, -0.772656143, -1.43037377e-08, 0.634824753, -4.92040542e-09, 1, 1.6543078e-08, -0.634824753, 9.65851576e-09, -0.772656143)
            until (not AutoFarm.Enabled)
        end
    end,
    HoverText = "AutoFarming When you in a human team"
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
    HoverText = "Speeding (might flag sometimes)"
})
Sections["Speed"].CreateSlider({
    Name = "Value",
    Min = 0,
    Max = 5,
    Default = 3,
    Function = function(val)
        SpeedValue["Value"] = val
    end,
    HoverText = "Speed Value"
})
