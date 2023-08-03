    local name = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
    local Funcs = shared.FunctionLoaded
    local kavo = shared.kavolib
    local win = kavo:CreateWindow({
        Title = "MaxUi X | ".. name,
        Theme = "Luna"
    })
    local Tabs = shared.TabLoaded
    Tabs = {
        Main = win.CreateTab("MainScript"),
        Credits = win.CreateTab("Credits")
    }
    local Sections = shared.SectionsLoaded
    Sections = {
        AutoBadges = Tabs.Main.CreateSection("AutoBadges"),
        Credits = Tabs.Credits.CreateSection("By MaxlaserTech")
    }
