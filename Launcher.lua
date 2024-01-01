print("updated2")
local kavo = loadstring(game:HttpGet("https://raw.githubusercontent.com/IlikeScript1234/MaxUIX/main/Libraries/kavo.lua", true))()
shared.kavolib = kavo
print("2")
local defaultkavo = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxlaserTechAlt/MaxlaserTechAlt.github.io/main/KavoCustom.lua", true))()
shared.defaultkavolib = defaultkavo
print("3")
local Sections = {}
shared.SectionsLoaded = Sections
print("4")
local Tabs = {}
shared.TabLoaded = Tabs

local FunctionService
FunctionService = {
    ["Players"] = game.Players.LocalPlayer,
    ["PlayersService"] = game:GetService("Players"),
    ["Tween"] = game:GetService("TweenService"),
    ["Gravity"] = workspace.Gravity,
    ["GamePlaceId"] = game.PlaceId,
    ["GameName"] = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
}
shared.FunctionLoaded = FunctionService

local MaxUiFolder = function(path)
    task.spawn(function()
        local textlabel = Instance.new("TextLabel")
        textlabel.Size = UDim2.new(1, 0, 0, 36)
        textlabel.Text = "Downloading "..path
        textlabel.BackgroundTransparency = 1
        textlabel.TextStrokeTransparency = 0
        textlabel.TextSize = 30
        textlabel.Font = Enum.Font.SourceSans
        textlabel.TextColor3 = Color3.new(1, 1, 1)
        textlabel.Position = UDim2.new(0, 0, 0, -36)
        textlabel.Parent = game.CoreGui
        repeat task.wait() until isfile(path)
        textlabel:Remove()
    end)
    makefolder("Aqura/".. path)
end
local MaxUiFile = function(path, script)
    task.spawn(function()
        local textlabel = Instance.new("TextLabel")
        textlabel.Size = UDim2.new(1, 0, 0, 36)
        textlabel.Text = "Downloading "..path
        textlabel.BackgroundTransparency = 1
        textlabel.TextStrokeTransparency = 0
        textlabel.TextSize = 30
        textlabel.Font = Enum.Font.SourceSans
        textlabel.TextColor3 = Color3.new(1, 1, 1)
        textlabel.Position = UDim2.new(0, 0, 0, -36)
        textlabel.Parent = game.CoreGui
        repeat task.wait(0.1) until isfile(path)
        textlabel:Remove()
    end)
    writefile("Aqura/".. path .. ".lua", script or "")
end
local MaxUiJson = function(path, script)
    task.spawn(function()
        local textlabel = Instance.new("TextLabel")
        textlabel.Size = UDim2.new(1, 0, 0, 36)
        textlabel.Text = "Downloading "..path
        textlabel.BackgroundTransparency = 1
        textlabel.TextStrokeTransparency = 0
        textlabel.TextSize = 30
        textlabel.Font = Enum.Font.SourceSans
        textlabel.TextColor3 = Color3.new(1, 1, 1)
        textlabel.Position = UDim2.new(0, 0, 0, -36)
        textlabel.Parent = game.CoreGui
        repeat task.wait(0.1) until isfile(path)
        textlabel:Remove()
    end)
    writefile("Aqura/".. path .. ".json", script or "")
end
task.spawn(function()
    local textlabel = Instance.new("TextLabel")
    textlabel.Size = UDim2.new(1, 0, 0, 36)
    textlabel.Text = "Downloading Aqura"
    textlabel.BackgroundTransparency = 1
    textlabel.TextStrokeTransparency = 0
    textlabel.TextSize = 30
    textlabel.Font = Enum.Font.SourceSans
    textlabel.TextColor3 = Color3.new(1, 1, 1)
    textlabel.Position = UDim2.new(0, 0, 0, -36)
    textlabel.Parent = game.CoreGui
    repeat task.wait() until isfile("Aqura")
    textlabel:Remove()
end)
makefolder("Aqura")
MaxUiFolder("Libraries")
MaxUiFolder("assets")
MaxUiFolder("CustomModules")
MaxUiFolder("Profiles")
MaxUiFile("CustomModules/".. game.PlaceId)
local Universal = [[
    print("execute universal")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/IlikeScript1234/MaxUIX/main/Universal.lua", true))()

]]
MaxUiJson("Profiles/Universal")
function MainLoaded()
    local customModuleURL = "https://raw.githubusercontent.com/IlikeScript1234/MaxUIX/main/CustomModules/"..game.PlaceId..".lua"
    local customModuleScript = game:HttpGet(customModuleURL, true)
    if customModuleScript then
        local success, error = pcall(function()
            MaxUiFile("CustomModules/"..game.PlaceId, customModuleScript)
            loadstring(customModuleScript)()
        end)
        if not success then
            local customModuleWeb = "https://raw.githubusercontent.com/IlikeScript1234/MaxUIX/main/Universal.lua"
            local customModuleCoding = game:HttpGet(customModuleWeb, true)
            MaxUiFile("Universal", customModuleCoding)
            loadstring(Universal)()
            warn("Failed To Loaded Modules: " .. tostring(error))
        end
    else
        local customModuleUniversal = "https://raw.githubusercontent.com/IlikeScript1234/MaxUIX/main/Universal.lua"
        local customModuleScriptUniversal = game:HttpGet(customModuleUniversal, true)
        MaxUiFile("Universal")
        loadstring(Universal)()
    end
end

task.spawn(function()
    MainLoaded()
end)
