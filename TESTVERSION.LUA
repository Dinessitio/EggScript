local TESTING = true
local tp = true
if TESTING then
warn("Test Version")
end

-- создание screengui
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
if not screenGui then
    warn("Не удалось создать ScreenGui")
    tp = false
    return
end

-- поиск playergui
local playerGui = LocalPlayer:WaitForChild("PlayerGui")
if not playerGui then
    warn("PlayerGui не найден")
    tp = false
    return
end

-- создание заднего фона
local backscreen = Instance.new("Frame")
if not backscreen then
warn("Не удалось создать Frame")
tp = false
return
end
backscreen.Size = UDim2.new(2, 0, 2, 0)
backscreen.Position = UDim2.new(-0.5, 0, -0.7, 0)
backscreen.BackgroundColor3 = Color3.new(0, 0, 0)
backscreen.BackgroundTransparency = 0
backscreen.Parent = screenGui

-- создание текста1
local label = Instance.new("TextLabel")
label.Size = UDim2.new(0, 300, 0, 100) 
label.Position = UDim2.new(0.5, -150, 0.5, 20)
label.Text = "Статус: Получаем яйки"
label.TextColor3 = Color3.new(1, 1, 1)
label.BackgroundTransparency = 1
label.TextSize = 48 
label.Font = Enum.Font.SourceSansBold 
label.Parent = backscreen

