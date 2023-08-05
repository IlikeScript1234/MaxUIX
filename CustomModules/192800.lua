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
    ["CarCrasher"] = Tabs["Main"].CreateSection("CarCrasher"),
    ["Menu"] = Tabs["Main"].CreateSection("Menu"),
    ["KillPlayer"] = Tabs["Main"].CreateSection("KillPlayer"),
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

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local chr = player.Character or player.CharacterAdded:Wait()
local HumanoidRootPart = chr:WaitForChild("HumanoidRootPart")

local Cars = game.Workspace:WaitForChild("Cars")
local CarModels = Cars:GetChildren()
local Trucks = game.Workspace:WaitForChild("Trucks")
local TruckModels = Trucks:GetChildren()
local CarCrasher = {Enabled = false}
CarCrasher = Sections["CarCrasher"].CreateToggle({
    Name = "CarCrasher",
    Function = function(callback)
        CarCrasher.Enabled = callback
        funcslib.displayErrorPopup("Warning", "Execute Infinite Yield And Use Fly Commands", "Okay!") 
        task.spawn(function()
            repeat task.wait(0.15)
                for i, v in pairs(CarModels) do
                    if v.ClassName ~= "Model" then
                        table.remove(CarModels, i)
                    end
                end
                
                for i, v in pairs(TruckModels) do
                    if v.ClassName ~= "Model" then
                        table.remove(TruckModels, i)
                    end
                end
                
                local VehicleModels = {}
                for _, v in pairs(CarModels) do
                    table.insert(VehicleModels, v)
                end
                for _, v in pairs(TruckModels) do
                    table.insert(VehicleModels, v)
                end
                
                local Vehicle = VehicleModels[math.random(#VehicleModels)]
                local Seat = Vehicle:WaitForChild("Seat")
                
                HumanoidRootPart.CFrame = Seat.CFrame
            until (not CarCrasher.Enabled)
        end)
    end,
    HoverText = "crash people car"
})

local destroy = workspace.GameService.CloseBox
Sections["Menu"].CreateButton({
    Name = "AutoFarmMenu",
    Function = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/cEwtwKZR", true))()
    end,
    HoverText = "was not made by me"
})

local destroy = workspace.GameService.CloseBox
Sections["KillPlayer"].CreateTextBox({
    Name = "Kill Player",
    Function = function(txt)
        destroy:FireServer(Players:FindFirstChild(txt).Character.Head,"call")
    end,
    HoverText = "killing player"
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
