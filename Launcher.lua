print("updated4")
local kavo = loadstring(game:HttpGet("https://raw.githubusercontent.com/IlikeScript1234/MaxUIX/main/Libraries/kavo.lua", true))()
print("1")
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
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local ImageLabel = Instance.new("ImageLabel")
    local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    local TextLabel = Instance.new("TextLabel")
    local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
    local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
    local TextLabel_2 = Instance.new("TextLabel")
    local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
    local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
    local ScrollingFrame = Instance.new("ScrollingFrame")
    local Frame_2 = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local Frame_3 = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local UIGradient = Instance.new("UIGradient")
    local TextLabel_3 = Instance.new("TextLabel")
    local UIGradient_2 = Instance.new("UIGradient")
    local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
    local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
    local Frame_4 = Instance.new("Frame")
    local TextButton = Instance.new("TextButton")
    local UIGradient_3 = Instance.new("UIGradient")
    local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
    local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
    local UICorner_4 = Instance.new("UICorner")
    local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
    local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
    local UIGradient_4 = Instance.new("UIGradient")
    local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
    local Frame_5 = Instance.new("Frame")
    local UICorner_5 = Instance.new("UICorner")
    local Frame_6 = Instance.new("Frame")
    local UICorner_6 = Instance.new("UICorner")
    local UIGradient_5 = Instance.new("UIGradient")
    local TextLabel_4 = Instance.new("TextLabel")
    local UIGradient_6 = Instance.new("UIGradient")
    local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")
    local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
    local Frame_7 = Instance.new("Frame")
    local TextButton_2 = Instance.new("TextButton")
    local UIGradient_7 = Instance.new("UIGradient")
    local UIAspectRatioConstraint_10 = Instance.new("UIAspectRatioConstraint")
    local UITextSizeConstraint_6 = Instance.new("UITextSizeConstraint")
    local UICorner_7 = Instance.new("UICorner")
    local UIAspectRatioConstraint_11 = Instance.new("UIAspectRatioConstraint")
    local UIAspectRatioConstraint_12 = Instance.new("UIAspectRatioConstraint")
    local UIGradient_8 = Instance.new("UIGradient")
    local UIAspectRatioConstraint_13 = Instance.new("UIAspectRatioConstraint")
    local UIAspectRatioConstraint_14 = Instance.new("UIAspectRatioConstraint")
    local shadowHolder = Instance.new("Frame")
    local umbraShadow = Instance.new("ImageLabel")
    local UIAspectRatioConstraint_15 = Instance.new("UIAspectRatioConstraint")
    local penumbraShadow = Instance.new("ImageLabel")
    local UIAspectRatioConstraint_16 = Instance.new("UIAspectRatioConstraint")
    local ambientShadow = Instance.new("ImageLabel")
    local UIAspectRatioConstraint_17 = Instance.new("UIAspectRatioConstraint")
    local UIAspectRatioConstraint_18 = Instance.new("UIAspectRatioConstraint")
    local UIAspectRatioConstraint_19 = Instance.new("UIAspectRatioConstraint")
    local UIAspectRatioConstraint_20 = Instance.new("UIAspectRatioConstraint")
    
    
    ScreenGui.Parent = game.CoreGui
    ScreenGui.IgnoreGuiInset = true
    
    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.239455789, 0, 0.0752089173, 0)
    Frame.Size = UDim2.new(0.519727886, 0, 0.846796632, 0)
    
    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = Frame
    
    ImageLabel.Parent = Frame
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Position = UDim2.new(0, 0, -0.00986842066, 0)
    ImageLabel.Size = UDim2.new(0.109947644, 0, 0.131578952, 0)
    ImageLabel.Image = "rbxassetid://14836371039"
    
    UIAspectRatioConstraint.Parent = ImageLabel
    UIAspectRatioConstraint.AspectRatio = 1.050
    
    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.018324608, 0, 0.100605264, 0)
    TextLabel.Size = UDim2.new(0.961000025, 0, 0.00328947371, 0)
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.Text = ""
    TextLabel.TextColor3 = Color3.fromRGB(84, 84, 84)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 16.000
    TextLabel.TextTransparency = 1.000
    TextLabel.TextWrapped = true
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel.TextYAlignment = Enum.TextYAlignment.Top
    
    UIAspectRatioConstraint_2.Parent = TextLabel
    UIAspectRatioConstraint_2.AspectRatio = 367.102
    
    UITextSizeConstraint.Parent = TextLabel
    UITextSizeConstraint.MaxTextSize = 1
    
    TextLabel_2.Parent = Frame
    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.BackgroundTransparency = 1.000
    TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_2.BorderSizePixel = 0
    TextLabel_2.Position = UDim2.new(0.235602096, 0, -0.0263157897, 0)
    TextLabel_2.Size = UDim2.new(0.523560226, 0, 0.164473683, 0)
    TextLabel_2.Font = Enum.Font.GothamBold
    TextLabel_2.Text = "Main Menu"
    TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.TextScaled = true
    TextLabel_2.TextSize = 14.000
    TextLabel_2.TextWrapped = true
    
    UITextSizeConstraint_2.Parent = TextLabel_2
    UITextSizeConstraint_2.MaxTextSize = 14
    
    UIAspectRatioConstraint_3.Parent = TextLabel_2
    UIAspectRatioConstraint_3.AspectRatio = 4.000
    
    ScrollingFrame.Parent = Frame
    ScrollingFrame.Active = true
    ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScrollingFrame.BackgroundTransparency = 1.000
    ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ScrollingFrame.BorderSizePixel = 0
    ScrollingFrame.Position = UDim2.new(0.018324608, 0, 0.134868443, 0)
    ScrollingFrame.Size = UDim2.new(0.960732996, 0, 0.838815808, 0)
    ScrollingFrame.ScrollBarThickness = 1
    
    Frame_2.Parent = ScrollingFrame
    Frame_2.BackgroundColor3 = Color3.fromRGB(223, 223, 223)
    Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_2.BorderSizePixel = 0
    Frame_2.Position = UDim2.new(0.517711163, 0, 0.000727574981, 0)
    Frame_2.Size = UDim2.new(0, 170, 0, 146)
    
    UICorner_2.Parent = Frame_2
    
    Frame_3.Parent = Frame_2
    Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_3.BorderSizePixel = 0
    Frame_3.Position = UDim2.new(0.00588235306, 0, 0.00701444456, 0)
    Frame_3.Size = UDim2.new(0.982352912, 0, 0.972602725, 0)
    
    UICorner_3.Parent = Frame_3
    
    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(31, 31, 31)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(48, 48, 48))}
    UIGradient.Rotation = 70
    UIGradient.Parent = Frame_3
    
    TextLabel_3.Parent = Frame_3
    TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_3.BackgroundTransparency = 1.000
    TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_3.BorderSizePixel = 0
    TextLabel_3.Position = UDim2.new(0.0378355831, 0, 0.343884975, 0)
    TextLabel_3.Size = UDim2.new(0.922155678, 0, 0.190140843, 0)
    TextLabel_3.Font = Enum.Font.GothamBlack
    TextLabel_3.Text = "Work at a pizza place"
    TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_3.TextScaled = true
    TextLabel_3.TextSize = 11.000
    TextLabel_3.TextTransparency = 0.200
    TextLabel_3.TextWrapped = true
    TextLabel_3.TextYAlignment = Enum.TextYAlignment.Top
    
    UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(166, 166, 166))}
    UIGradient_2.Rotation = -67
    UIGradient_2.Parent = TextLabel_3
    
    UIAspectRatioConstraint_4.Parent = TextLabel_3
    UIAspectRatioConstraint_4.AspectRatio = 5.704
    
    UITextSizeConstraint_3.Parent = TextLabel_3
    UITextSizeConstraint_3.MaxTextSize = 15
    
    Frame_4.Parent = Frame_3
    Frame_4.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    Frame_4.BorderColor3 = Color3.fromRGB(19, 0, 230)
    Frame_4.BorderSizePixel = 0
    Frame_4.Position = UDim2.new(0.257485032, 0, 0.795774758, 0)
    Frame_4.Size = UDim2.new(0.479041904, 0, 0.126760557, 0)
    
    TextButton.Parent = Frame_4
    TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.BackgroundTransparency = 1.000
    TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.BorderSizePixel = 0
    TextButton.Size = UDim2.new(1, 0, 1, 0)
    TextButton.Font = Enum.Font.Gotham
    TextButton.Text = "Execute"
    TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.TextScaled = true
    TextButton.TextSize = 10.000
    TextButton.TextWrapped = true
    TextButton.MouseButton1Click:Connect(function()
    	loadstring(game:HttpGet("https://raw.githubusercontent.com/IlikeScript1234/MaxUIX/main/CustomModules/192800.lua", true))()
    	ScreenGui:Destroy()
    end)
    
    UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(181, 181, 181)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(165, 165, 165))}
    UIGradient_3.Rotation = 80
    UIGradient_3.Parent = TextButton
    
    UIAspectRatioConstraint_5.Parent = TextButton
    UIAspectRatioConstraint_5.AspectRatio = 4.444
    
    UITextSizeConstraint_4.Parent = TextButton
    UITextSizeConstraint_4.MaxTextSize = 10
    
    UICorner_4.CornerRadius = UDim.new(0, 5)
    UICorner_4.Parent = Frame_4
    
    UIAspectRatioConstraint_6.Parent = Frame_4
    UIAspectRatioConstraint_6.AspectRatio = 4.444
    
    UIAspectRatioConstraint_7.Parent = Frame_3
    UIAspectRatioConstraint_7.AspectRatio = 1.176
    
    UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(31, 31, 31)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(48, 48, 48))}
    UIGradient_4.Rotation = 70
    UIGradient_4.Parent = Frame_2
    
    UIAspectRatioConstraint_8.Parent = Frame_2
    UIAspectRatioConstraint_8.AspectRatio = 1.164
    
    Frame_5.Parent = ScrollingFrame
    Frame_5.BackgroundColor3 = Color3.fromRGB(223, 223, 223)
    Frame_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_5.BorderSizePixel = 0
    Frame_5.Position = UDim2.new(0.00817438681, 0, 0.00173477468, 0)
    Frame_5.Size = UDim2.new(0, 170, 0, 146)
    
    UICorner_5.Parent = Frame_5
    
    Frame_6.Parent = Frame_5
    Frame_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_6.BorderSizePixel = 0
    Frame_6.Position = UDim2.new(0.00588235306, 0, 0.00701444456, 0)
    Frame_6.Size = UDim2.new(0.982352912, 0, 0.972602725, 0)
    
    UICorner_6.Parent = Frame_6
    
    UIGradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(31, 31, 31)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(48, 48, 48))}
    UIGradient_5.Rotation = 70
    UIGradient_5.Parent = Frame_6
    
    TextLabel_4.Parent = Frame_6
    TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_4.BackgroundTransparency = 1.000
    TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_4.BorderSizePixel = 0
    TextLabel_4.Position = UDim2.new(0.0378355831, 0, 0.336842716, 0)
    TextLabel_4.Size = UDim2.new(0.922155678, 0, 0.190140843, 0)
    TextLabel_4.Font = Enum.Font.GothamBlack
    TextLabel_4.Text = "Universal"
    TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_4.TextScaled = true
    TextLabel_4.TextSize = 11.000
    TextLabel_4.TextTransparency = 0.200
    TextLabel_4.TextWrapped = true
    TextLabel_4.TextYAlignment = Enum.TextYAlignment.Top
    
    UIGradient_6.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(166, 166, 166))}
    UIGradient_6.Rotation = -67
    UIGradient_6.Parent = TextLabel_4
    
    UIAspectRatioConstraint_9.Parent = TextLabel_4
    UIAspectRatioConstraint_9.AspectRatio = 5.704
    
    UITextSizeConstraint_5.Parent = TextLabel_4
    UITextSizeConstraint_5.MaxTextSize = 27
    
    Frame_7.Parent = Frame_6
    Frame_7.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    Frame_7.BorderColor3 = Color3.fromRGB(19, 0, 230)
    Frame_7.BorderSizePixel = 0
    Frame_7.Position = UDim2.new(0.257485032, 0, 0.795774758, 0)
    Frame_7.Size = UDim2.new(0.479041904, 0, 0.126760557, 0)
    
    TextButton_2.Parent = Frame_7
    TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton_2.BackgroundTransparency = 1.000
    TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_2.BorderSizePixel = 0
    TextButton_2.Size = UDim2.new(1, 0, 1, 0)
    TextButton_2.Font = Enum.Font.Gotham
    TextButton_2.Text = "Execute"
    TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton_2.TextScaled = true
    TextButton_2.TextSize = 10.000
    TextButton_2.TextWrapped = true
    TextButton_2.MouseButton1Click:Connect(function()
    	loadstring(game:HttpGet("https://raw.githubusercontent.com/IlikeScript1234/MaxUIX/main/Universal.lua", true))()
    	ScreenGui:Destroy()
    end)
    
    UIGradient_7.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(181, 181, 181)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(165, 165, 165))}
    UIGradient_7.Rotation = 80
    UIGradient_7.Parent = TextButton_2
    
    UIAspectRatioConstraint_10.Parent = TextButton_2
    UIAspectRatioConstraint_10.AspectRatio = 4.444
    
    UITextSizeConstraint_6.Parent = TextButton_2
    UITextSizeConstraint_6.MaxTextSize = 10
    
    UICorner_7.CornerRadius = UDim.new(0, 5)
    UICorner_7.Parent = Frame_7
    
    UIAspectRatioConstraint_11.Parent = Frame_7
    UIAspectRatioConstraint_11.AspectRatio = 4.444
    
    UIAspectRatioConstraint_12.Parent = Frame_6
    UIAspectRatioConstraint_12.AspectRatio = 1.176
    
    UIGradient_8.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(31, 31, 31)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(48, 48, 48))}
    UIGradient_8.Rotation = 70
    UIGradient_8.Parent = Frame_5
    
    UIAspectRatioConstraint_13.Parent = Frame_5
    UIAspectRatioConstraint_13.AspectRatio = 1.164
    
    UIAspectRatioConstraint_14.Parent = ScrollingFrame
    UIAspectRatioConstraint_14.AspectRatio = 1.439
    
    shadowHolder.Name = "shadowHolder"
    shadowHolder.Parent = Frame
    shadowHolder.BackgroundTransparency = 1.000
    shadowHolder.Position = UDim2.new(-0.0192358401, 0, -0.0276851654, 0)
    shadowHolder.Size = UDim2.new(1.03657258, 0, 1.05211306, 0)
    shadowHolder.ZIndex = 0
    
    umbraShadow.Name = "umbraShadow"
    umbraShadow.Parent = shadowHolder
    umbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
    umbraShadow.BackgroundTransparency = 1.000
    umbraShadow.Position = UDim2.new(0.5, 0, 0.506253064, 0)
    umbraShadow.Size = UDim2.new(1.0101018, 0, 1.01250613, 0)
    umbraShadow.ZIndex = 0
    umbraShadow.Image = "rbxassetid://1316045217"
    umbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    umbraShadow.ImageTransparency = 0.860
    umbraShadow.ScaleType = Enum.ScaleType.Slice
    umbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)
    
    UIAspectRatioConstraint_15.Parent = umbraShadow
    UIAspectRatioConstraint_15.AspectRatio = 1.235
    
    penumbraShadow.Name = "penumbraShadow"
    penumbraShadow.Parent = shadowHolder
    penumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
    penumbraShadow.BackgroundTransparency = 1.000
    penumbraShadow.Position = UDim2.new(0.5, 0, 0.506253064, 0)
    penumbraShadow.Size = UDim2.new(1.0101018, 0, 1.01250613, 0)
    penumbraShadow.ZIndex = 0
    penumbraShadow.Image = "rbxassetid://1316045217"
    penumbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    penumbraShadow.ImageTransparency = 0.880
    penumbraShadow.ScaleType = Enum.ScaleType.Slice
    penumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)
    
    UIAspectRatioConstraint_16.Parent = penumbraShadow
    UIAspectRatioConstraint_16.AspectRatio = 1.235
    
    ambientShadow.Name = "ambientShadow"
    ambientShadow.Parent = shadowHolder
    ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
    ambientShadow.BackgroundTransparency = 1.000
    ambientShadow.Position = UDim2.new(0.5, 0, 0.506253064, 0)
    ambientShadow.Size = UDim2.new(1.0101018, 0, 1.01250613, 0)
    ambientShadow.ZIndex = 0
    ambientShadow.Image = "rbxassetid://1316045217"
    ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    ambientShadow.ImageTransparency = 0.880
    ambientShadow.ScaleType = Enum.ScaleType.Slice
    ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)
    
    UIAspectRatioConstraint_17.Parent = ambientShadow
    UIAspectRatioConstraint_17.AspectRatio = 1.235
    
    UIAspectRatioConstraint_18.Parent = shadowHolder
    UIAspectRatioConstraint_18.AspectRatio = 1.238
    
    UIAspectRatioConstraint_19.Parent = Frame
    UIAspectRatioConstraint_19.AspectRatio = 1.257
    
    UIAspectRatioConstraint_20.Parent = ScreenGui
    UIAspectRatioConstraint_20.AspectRatio = 2.047
end

task.spawn(function()
    MainLoaded()
end)
