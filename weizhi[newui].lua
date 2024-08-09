local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("未知脚本", "DarkTheme")
-- Home
local Home = Window:NewTab("🏠主页")
local HomeSection1 = Tab:NewSection("欢迎使用未知脚本😀,本脚本完全免费，请勿⭕钱")
CopyQQnumbers:NewButton("点击复制QQ群号", "592214831", function()
    setclipboard("592214831")
end)

-- 通用
local Home = Window:NewTab("🛠️通用")
local HomeSection1 = Tab:NewSection("这里的功能是基本通用的")
PlayerMaxHealth:NewButton("回满血", "重回巅峰状态", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth 
end)
PlayerKill:NewButton("紫砂", "在必要时，自我了断吧💀!", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)
PlayerFly:NewButton("未知飞行", "未知飞行，让你在空中自由飞翔", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/dH9Gi7H7'))()
end)
VFly:NewButton("未知飞车", "未知飞车，让你和车车在空中自由飞翔", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/dTvuDxuh"))()
end)
JumpPower:NewSlider("移动速度", "让你快到起飞", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
MaxHealth:NewSlider("最大血量", "让你血条上限超出极限", 10000000, 0, function(s) -- 10000000 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.MaxHealth = s
end)
Health:NewSlider("当前血量", "最好和最大血量配合使用", 10000000, 0, function(s) -- 10000000 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.Health = s
end)
Gravity:NewTextBox("重力设置", "你就是古希腊掌握重力的神😀", function(txt)
	game.Workspace.Gravity = txt
end)
Light:NewToggle("夜视", "在黑暗中洞悉一切😍", function(state)
    if state then
        game.Lighting.Ambient = Color3.new(1, 1, 1)
    else
        game.Lighting.Ambient = Color3.new(0, 0, 0)
    end
end)



-- 力量传奇
local LLCQ = Window:NewTab("💪力量传奇")

Section:NewDropdown("传送区", "使你快速传送到各个地方", {"传送到出生点","传送到冰霜健身房","传送到神话健身房","传送到永恒健身房","传送到传说健身房","传送到肌肉之王健身房","传送到安全岛","传送到幸运抽奖区域"}, function(currentcurrentOption)
    if(currentOption == "传送到出生点") then --二个等于是对比，一个是赋值 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7, 3, 108)
    elseif(currentOption == "传送到冰霜健身房") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2543, 13, -410)
    elseif(currentOption == "传送到神话健身房") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2177, 13, 1070)
    elseif(currentOption == "传送到永恒健身房") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6686, 13, -1284)
    elseif(currentOption == "传送到传说健身房") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4676, 997, -3915)
    elseif(currentOption == "传送到肌肉之王健身房") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8554, 22, -5642)
    elseif(currentOption == "传送到安全岛") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-39, 10, 1838)
    elseif(currentOption == "传送到幸运抽奖区域") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2606, -2, 5753)

    print(currentOption)
end)
