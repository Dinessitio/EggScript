local TpAmount = Config.Accounts * Config.Accuracy
local TESTING = true
local tp = true
local Rejoining = true

-- принт настроек
if TESTING then
print("🚀 Запуск скрипта: Получение Яиц (Тестовая Версия)")
else
print("🚀 Запуск скрипта: Получение Яиц")
end
print("----------------------------------------")
print("⚙ Параметры скрипта")
print("👤 Количество аккаунтов: " .. Config.Accounts .. "")
print("🔰 Аккуратность: ".. Config.Accuracy .. "")
print("🔁 Перезаход: " .. (Config.Rejoining and "Да" or "Нет"))
print("🕐 Количество попыток: ".. Config.Accuracy .. "")
print("----------------------------------------")

-- Получение сервисов
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Создание ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MyMenuGui"
screenGui.ResetOnSpawn = false

-- Проверка на дублирование
if LocalPlayer.PlayerGui:FindFirstChild(screenGui.Name) then
    warn("Меню уже существует")
    tp = false
    return
end

-- Поиск PlayerGui
local playerGui = LocalPlayer:WaitForChild("PlayerGui", 3)
if not playerGui then
    warn("PlayerGui не найден")
    tp = false
    return
end

screenGui.Parent = playerGui

-- Создание заднего фона
local backscreen = Instance.new("Frame")
backscreen.Name = "Background"
backscreen.Size = UDim2.new(2, 0, 2, 0)  
backscreen.Position = UDim2.new(-0.5, 0, -0.5, 0)
backscreen.BackgroundColor3 = Color3.new(0, 0, 0)
backscreen.BackgroundTransparency = 0
backscreen.Parent = screenGui
if not backscreen then
warn("Не удалось создать фон")
tp = false
return
end

-- Создание текста1
local label = Instance.new("TextLabel")
label.Name = "StatusLabel"
label.Size = UDim2.new(0, 300, 0, 100)
label.Position = UDim2.new(0.5, -150, 0.5, -50)
label.Text = "Статус: Получаем яйки"
label.TextColor3 = Color3.new(1, 1, 1)
label.BackgroundTransparency = 1
label.TextSize = 48
label.TextScaled = true 
label.Font = Enum.Font.SourceSansBold
label.Parent = backscreen

-- Создание текста2
local label1 = Instance.new("TextLabel")
label1.Name = "CreditsLabel"
label1.Size = UDim2.new(0, 300, 0, 100)
label1.Position = UDim2.new(0.5, -150, 0.5, -250) 
label1.Text = "Funpay: TheDinessitio"
label1.TextColor3 = Color3.new(0.074, 0.074, 0.074)
label1.BackgroundTransparency = 1
label1.TextSize = 60
label1.Font = Enum.Font.SourceSansBold
label1.Parent = backscreen
if not label then
tp = false
return
end

local prt = Instance.new("Part")
prt.Parent = game.Workspace
prt.Name = "asigmatism"
prt.Anchored = true
prt.CFrame = CFrame.new(41.7359543, 147.855878, -531.89093, 0.979220033, -0, -0.202800676, 0, 1, -0, 0.202800676, 0, 0.979220033)
prt.Size = prt.Size + Vector3.new(8, 0.1, 8)
if not prt then
tp = false
warn("Не удалось создать спасательный part")
return
end
local rootpart = game.Players.LocalPlayer.Character.HumanoidRootPart
if tp then
for i = 1, TpAmount do
    print("✅ Попытка " .. i .. " из " .. TpAmount)
    rootpart.CFrame = CFrame.new(41.7359543, 153.055878, -531.89093, -0.406030893, -0, -0.913859427, 0, 1, -0, 0.913859427, 0, -0.406030893)
    wait(0.5)
    rootpart.CFrame = CFrame.new(41.7359543, 153.055878, -531.89093, -0.406030893, -0, -0.913859427, 0, 1, -0, 0.913859427, 0, -0.406030893)
    wait(0.5)
    rootpart.CFrame = CFrame.new(41.7359543, 153.055878, -531.89093, -0.406030893, -0, -0.913859427, 0, 1, -0, 0.913859427, 0, -0.406030893)
    wait(0.5)
    rootpart.CFrame = CFrame.new(83.8066254, 69.4766388, -142.149338, 0.632733166, -0, -0.774369895, 0, 1, -0, 0.774369895, 0, 0.632733166)
    wait(0.5)
    rootpart.CFrame = CFrame.new(83.8066254, 69.4766388, -142.149338, 0.632733166, -0, -0.774369895, 0, 1, -0, 0.774369895, 0, 0.632733166)
    wait(0.5)
    rootpart.CFrame = CFrame.new(83.8066254, 69.4766388, -142.149338, 0.632733166, -0, -0.774369895, 0, 1, -0, 0.774369895, 0, 0.632733166)
    wait(0.5)
    end
end
-- Rejoining
if Rejoining then
local TeleportService = game:GetService("TeleportService")
 
local Rejoin = coroutine.create(function()
    local Success, ErrorMessage = pcall(function()
        TeleportService:Teleport(game.PlaceId, LocalPlayer)
    end)
 
    if ErrorMessage and not Success then
        warn(ErrorMessage)
    end
end)
 
coroutine.resume(Rejoin)
end
