shared.LoaderTitle = "Discord.gg/Applehub";
shared.LoaderKeyFrames = {
    [1] = {
        1,
        10
    },
    [2] = {
        2,
        30
    },
    [3] = {
        3,
        60
    },
    [4] = {
        2,
        100
    }
};
local v2 = {
    LoaderData = {
        Name = shared.LoaderTitle or "A Loader",
        Colors = shared.LoaderColors or {
            Main = Color3.fromRGB(255, 0, 0),
            Topic = Color3.fromRGB(255, 0, 0),
            Title = Color3.fromRGB(255, 255, 255),
            LoaderBackground = Color3.fromRGB(40, 40, 40),
            LoaderSplash = Color3.fromRGB(255, 0, 0)
        }
    },
    Keyframes = shared.LoaderKeyFrames or {
        [1] = {
            1,
            10
        },
        [2] = {
            2,
            30
        },
        [3] = {
            3,
            60
        },
        [4] = {
            2,
            100
        }
    }
};
local v3 = {
    [1] = "",
    [2] = "",
    [3] = "",
    [4] = ""
};
function TweenObject(v178, v179, v180)
    game.TweenService:Create(v178, TweenInfo.new(v179, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), v180):Play();
end
function CreateObject(v181, v182)
    local v183 = Instance.new(v181);
    local v184;
    for v416, v417 in pairs(v182) do
        if (v416 ~= "Parent") then
            v183[v416] = v417;
        else
            v184 = v417;
        end
    end
    v183.Parent = v184;
    return v183;
end
local function v4(v186, v187)
    local v188 = Instance.new("UICorner");
    v188.CornerRadius = UDim.new(0, v186);
    v188.Parent = v187;
end
local v5 = CreateObject("ScreenGui", {
    Name = "Core",
    Parent = game.CoreGui
});
local v6 = CreateObject("Frame", {
    Name = "Main",
    Parent = v5,
    BackgroundColor3 = v2.LoaderData.Colors.Main,
    BorderSizePixel = 0,
    ClipsDescendants = true,
    Position = UDim2.new(0.5, 0, 0.5, 0),
    AnchorPoint = Vector2.new(0.5, 0.5),
    Size = UDim2.new(0, 0, 0, 0)
});
v4(12, v6);
local v7 = CreateObject("ImageLabel", {
    Name = "UserImage",
    Parent = v6,
    BackgroundTransparency = 1,
    Image = "rbxassetid://113371224934315", --- roblox imagem aqui
    Position = UDim2.new(0, 15, 0, 10),
    Size = UDim2.new(0, 50, 0, 50)
});
v4(25, v7);
local v8 = CreateObject("TextLabel", {
    Name = "UserName",
    Parent = v6,
    BackgroundTransparency = 1,
    Text = "Apple hub carregando...",
    Position = UDim2.new(0, 75, 0, 10),
    Size = UDim2.new(0, 200, 0, 50),
    Font = Enum.Font.GothamBold,
    TextColor3 = v2.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v9 = CreateObject("TextLabel", {
    Name = "Top",
    TextTransparency = 1,
    Parent = v6,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 70),
    Size = UDim2.new(0, 301, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "Loader",
    TextColor3 = v2.LoaderData.Colors.Topic,
    TextSize = 10,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v10 = CreateObject("TextLabel", {
    Name = "Title",
    Parent = v6,
    TextTransparency = 1,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 90),
    Size = UDim2.new(0, 301, 0, 46),
    Font = Enum.Font.Gotham,
    RichText = true,
    Text = "<b>" .. v2.LoaderData.Name .. "</b>",
    TextColor3 = v2.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v11 = CreateObject("Frame", {
    Name = "BG",
    Parent = v6,
    AnchorPoint = Vector2.new(0.5, 0),
    BackgroundTransparency = 1,
    BackgroundColor3 = v2.LoaderData.Colors.LoaderBackground,
    BorderSizePixel = 0,
    Position = UDim2.new(0.5, 0, 0, 70),
    Size = UDim2.new(0.8500000238418579, 0, 0, 24)
});
v4(8, v11);
local v12 = CreateObject("Frame", {
    Name = "Progress",
    Parent = v11,
    BackgroundColor3 = v2.LoaderData.Colors.LoaderSplash,
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    Size = UDim2.new(0, 0, 0, 24)
});
v4(8, v12);
local v13 = CreateObject("TextLabel", {
    Name = "StepLabel",
    Parent = v6,
    BackgroundTransparency = 1,
    Position = UDim2.new(0.5, 0, 1, - 25),
    Size = UDim2.new(1, - 20, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "",
    TextColor3 = v2.LoaderData.Colors.Topic,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Center,
    AnchorPoint = Vector2.new(0.5, 0.5)
});
function UpdateStepText(v191)
    v13.Text = v3[v191] or "" ;
end
function UpdatePercentage(v193, v194)
    TweenObject(v12, 0.5, {
        Size = UDim2.new(v193 / 100, 0, 0, 24)
    });
    UpdateStepText(v194);
end
TweenObject(v6, 0.25, {
    Size = UDim2.new(0, 346, 0, 121)
});
wait();
TweenObject(v9, 0.5, {
    TextTransparency = 0
});
TweenObject(v10, 0.5, {
    TextTransparency = 0
});
TweenObject(v11, 0.5, {
    BackgroundTransparency = 0
});
TweenObject(v12, 0.5, {
    BackgroundTransparency = 0
});
for v195, v196 in pairs(v2.Keyframes) do
    wait(v196[1]);
    UpdatePercentage(v196[2], v195);
end
UpdatePercentage(100, 4);
TweenObject(v9, 0.5, {
    TextTransparency = 1
});
TweenObject(v10, 0.5, {
    TextTransparency = 1
});
TweenObject(v11, 0.5, {
    BackgroundTransparency = 1
});
TweenObject(v12, 0.5, {
    BackgroundTransparency = 1
});
wait(0.5);
TweenObject(v6, 0.25, {
    Size = UDim2.new(0, 0, 0, 0)
});
wait(0.25);
v5:Destroy();
pcall(function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Apple Hub",
        Text = "Executed Successfully!",
        Duration = 5
    })
end)
-- spawn(function()
--     while wait() do
--         function print()
--         end
--         function warn()
--         end
--         function error()
--         end
--         debug.traceback = function()
--             return "Traceback blocked";
--         end;
--         debug.info = function()
--             return "Info blocked";
--         end;
--         local v420 = getrawmetatable(game);
--         if (v420 and not v420.__metatable) then
--             setreadonly(v420, false);
--             local v658 = v420.__index;
--             local v659 = v420.__newindex;
--             v420.__index = function(v759, v760)
--                 if ((v760 == "debug") or (v760 == "getrawmetatable")) then
--                     error("Anti Skid: Tampering detected!");
--                 end
--                 return v658(v759, v760);
--             end;
--             v420.__newindex = function(v761, v762, v763)
--                 if ((v762 == "debug") or (v762 == "getrawmetatable")) then
--                     error("Anti Skid: Tampering detected!");
--                 end
--                 return v659(v761, v762, v763);
--             end;
--             setreadonly(v420, true);
--         end
--         local function v421()
--             local v568 = {
--                 "_G",
--                 "debug",
--                 "getgenv",
--                 "getrawmetatable",
--                 "setfenv",
--                 "loadstring",
--                 "hookfunction"
--             };
--             for v662, v663 in ipairs(v568) do
--                 local v664, v665 = pcall(function()
--                     return _G[v663];
--                 end);
--                 if (v664 and v665) then
--                     error("Anti Skid: Environment tampering detected!");
--                 end
--             end
--         end
--         local function v422()
--             local v569 = {
--                 getrawmetatable,
--                 setreadonly,
--                 getgenv,
--                 debug.getinfo,
--                 debug.getregistry
--             };
--             for v666, v667 in ipairs(v569) do
--                 if v667 then
--                     error("Anti Skid: Hook tampering detected!");
--                 end
--             end
--         end
--         local v423 = game:FindService("HttpService");
--         if v423 then
--             v423.RequestAsync = function()
--                 error("HTTP Requests Blocked");
--             end;
--             v423.GetAsync = function()
--                 error("HTTP Get Blocked");
--             end;
--             v423.PostAsync = function()
--                 error("HTTP Post Blocked");
--             end;
--         end
--         function collectgarbage()
--             error("GC Blocked");
--         end
--         os.time = function()
--             error("OS Time Blocked");
--         end;
--         pcall(v421);
--         pcall(v422);
--     end
-- end);
local v14 = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))();
local v15 = v14:CreateWindow({
    Title = "Apple hub (🍎)",
    SubTitle = "By mini hell",
    TabWidth = 160,
    Theme = "Dark",
    Acrylic = false,
    Size = UDim2.fromOffset(500, 320),
    MinimizeKey = Enum.KeyCode.End
});
local v16 = {
    Home = v15:AddTab({
        Title = "Home"
    }),
    Main = v15:AddTab({
        Title = "Farm"
    }),
    Shop = v15:AddTab({
        Title = "Pvp"
    })
};
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local ESPPlayer = false
local UniqueID = math.random(1, 999999)

local function round(n)
	return math.floor(tonumber(n) + 0.5)
end

local function UpdatePlayerESP()
	for _, player in pairs(Players:GetPlayers()) do
		if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
			local head = player.Character.Head
			local tagName = "NameEsp" .. UniqueID

			if ESPPlayer then
				if not head:FindFirstChild(tagName) then
					local bill = Instance.new("BillboardGui")
					bill.Name = tagName
					bill.Adornee = head
					bill.AlwaysOnTop = true
					bill.Size = UDim2.new(1, 200, 1, 30)
					bill.ExtentsOffset = Vector3.new(0, 2, 0)
					bill.Parent = head

					local text = Instance.new("TextLabel", bill)
					text.BackgroundTransparency = 1
					text.Size = UDim2.new(1, 0, 1, 0)
					text.Font = Enum.Font.GothamBold
					text.TextSize = 14
					text.TextColor3 = (player.Team == LocalPlayer.Team) and Color3.new(0, 1, 0) or Color3.new(1, 0, 0)
					text.TextStrokeTransparency = 0.5
					text.TextYAlignment = Enum.TextYAlignment.Top
					text.TextWrapped = true
				end

				local label = head:FindFirstChild(tagName)
				if label and label:IsA("BillboardGui") and label:FindFirstChildOfClass("TextLabel") then
					local distance = (LocalPlayer.Character.Head.Position - head.Position).Magnitude / 3
					local health = 0
					local max = 100
					if player.Character:FindFirstChild("Humanoid") then
						local h = player.Character.Humanoid
						health = round(h.Health)
						max = round(h.MaxHealth)
					end

					label.TextLabel.Text = player.Name ..
						" | " .. round(distance) .. "m\n" ..
						"Vida: " .. health .. "/" .. max
				end
			else
				local existing = head:FindFirstChild(tagName)
				if existing then existing:Destroy() end
			end
		end
	end
end

-- Loop de atualização
RunService.RenderStepped:Connect(function()
	pcall(UpdatePlayerESP)
end)

-- Toggle no menu v16
local v51 = v16.Shop:AddToggle("ToggleESP", {
	Title = "Esp Player",
	Description = "",
	Default = false,
	Callback = function(state)
		ESPPlayer = state
		if not state then
			-- Limpa ESPs ao desativar
			for _, player in pairs(Players:GetPlayers()) do
				if player.Character and player.Character:FindFirstChild("Head") then
					local gui = player.Character.Head:FindFirstChild("NameEsp" .. UniqueID)
					if gui then gui:Destroy() end
				end
			end
		end
	end
})
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

-- Configurações
local AimPart = "HumanoidRootPart"
local AimRadius = 99999
local Smoothness = 0.2
local aimbotAtivo = false

-- Função para encontrar o jogador mais próximo do cursor
local function getClosestPlayer()
    local closestPlayer = nil
    local shortestDistance = AimRadius

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild(AimPart) then
            local part = player.Character[AimPart]
            local screenPos, onScreen = Camera:WorldToViewportPoint(part.Position)

            if onScreen then
                local distance = (Vector2.new(screenPos.X, screenPos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                if distance < shortestDistance then
                    shortestDistance = distance
                    closestPlayer = part
                end
            end
        end
    end

    return closestPlayer
end

-- Loop do Aimbot
RunService.RenderStepped:Connect(function()
    if aimbotAtivo then
        local target = getClosestPlayer()
        if target then
            local direction = (target.Position - Camera.CFrame.Position).Unit
            local newCFrame = CFrame.new(Camera.CFrame.Position, Camera.CFrame.Position + direction)
            Camera.CFrame = Camera.CFrame:Lerp(newCFrame, Smoothness)
        end
    end
end)

-- Toggle no menu v16
local v51 = v16.Shop:AddToggle("ToggleAimbot", {
    Title = "Aimbot",
    Description = "",
    Default = false,
    Callback = function(state)
        aimbotAtivo = state
        print("criptografia webhook******************************************************************** " .. (state and "ativado" or "desativado"))
    end
})
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local autoFarm = false
local myTycoon = nil

-- 🔍 Encontra o Tycoon do jogador baseado no Owner
local function encontrarMeuTycoon()
    for _, pastaRaiz in pairs(workspace:GetChildren()) do
        local tycoons = pastaRaiz:FindFirstChild("Tycoons")
        if tycoons then
            for _, tycoon in pairs(tycoons:GetChildren()) do
                local owner = tycoon:FindFirstChild("Owner")
                if owner and tostring(owner.Value) == player.Name then
                    print(" criptografia webhook********************************************************************", tycoon.Name)
                    return tycoon
                end
            end
        end
    end
    warn("❌ criptografia webhook********************************************************************")
    return nil
end

-- 🧭 Teleporta para a base do jogador
local function teleportarParaBase(tycoon)
    local base = tycoon:FindFirstChild("Baseplate") or tycoon:FindFirstChildWhichIsA("BasePart")
    local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    if base and hrp then
        hrp.CFrame = base.CFrame + Vector3.new(0, 10, 0)
    end
end

-- ✅ Verifica se o botão está dentro de uma pasta de Robux
local function estaEmObjetoDeRobux(obj)
    while obj.Parent do
        if string.find(obj.Parent.Name:lower(), "robux") or string.find(obj.Parent.Name:lower(), "gamepass") or string.find(obj.Parent.Name:lower(), "devproduct") then
            return true
        end
        obj = obj.Parent
    end
    return false
end

-- 🛠️ Função principal de farm
local function farmarDentroDoTycoon(tycoon)
    if not tycoon then return end
    local botoes = tycoon:FindFirstChild("UnpurchasedButtons")
    local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    if not (botoes and hrp) then return end

    for _, botao in pairs(botoes:GetChildren()) do
        if not autoFarm then return end  -- para imediatamente se desligar o toggle

        -- 1️⃣ Farmar Oil com número
        if botao.Name:match("^Oil %d+$") then
            local part = botao:FindFirstChildWhichIsA("BasePart", true)
            if part then
                hrp.CFrame = part.CFrame + Vector3.new(0, 5, 0)
                task.wait(0.3)
            end
        end

        -- 2️⃣ Farmar Gradient (ignora objetos de Robux)
        local gradient = botao:FindFirstChild("Gradient")
        if gradient and gradient:IsA("BasePart") and not estaEmObjetoDeRobux(gradient) then
            hrp.CFrame = gradient.CFrame + Vector3.new(0, 5, 0)
            task.wait(0.3)
        end
    end

    -- 3️⃣ Depois do farm, ir até CashCollector e esperar 6 segundos
    local collector = tycoon:FindFirstChild("Essentials") and tycoon.Essentials:FindFirstChild("CashCollector")
    if collector and hrp and autoFarm then
        hrp.CFrame = collector.CFrame + Vector3.new(0, 5, 0)
        task.wait(6)
    end
end

-- 🔁 Loop que executa o farm
task.spawn(function()
    while true do
        if autoFarm then
            if not myTycoon then
                myTycoon = encontrarMeuTycoon()
            end
            if myTycoon then
                local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                local base = myTycoon:FindFirstChild("Baseplate") or myTycoon:FindFirstChildWhichIsA("BasePart")
                if hrp and base and (hrp.Position - base.Position).Magnitude > 150 then
                    teleportarParaBase(myTycoon)
                    task.wait(1)
                end
                farmarDentroDoTycoon(myTycoon)
            end
        end
        task.wait(1)
    end
end)

-- ✅ TOGGLE (interface integrada)
local v51 = v16.Main:AddToggle("ToggleAutoFarmGradientOil", {
    Title = "Auto Farm",
    Description = "",
    Default = false,
    Callback = function(state)
        autoFarm = state
        if state then
            myTycoon = encontrarMeuTycoon()
            print("criptografia webhook********************************************************************")
        else
            print("criptografia webhook********************************************************************")
        end
    end
})
local player = game:GetService("Players").LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local guisOriginais = {}

-- 🧹 Remove (desativa) as notificações
local function ocultarGUIs()
    guisOriginais = {}
    for _, gui in pairs(playerGui:GetChildren()) do
        if gui:IsA("ScreenGui") then
            guisOriginais[gui] = gui.Enabled
            gui.Enabled = false
        elseif gui:IsA("GuiObject") then
            guisOriginais[gui] = gui.Visible
            gui.Visible = false
        end
    end
end

-- 🔁 Restaura as GUIs ao estado original
local function restaurarGUIs()
    for gui, estado in pairs(guisOriginais) do
        if gui:IsA("ScreenGui") then
            gui.Enabled = estado
        elseif gui:IsA("GuiObject") then
            gui.Visible = estado
        end
    end
    guisOriginais = {}
end

-- ✅ Toggle Remove Notification
local v51 = v16.Main:AddToggle("ToggleRemoveNotifications", {
    Title = "Remove Notification",
    Description = "",
    Default = false,
    Callback = function(state)
        if state then
            ocultarGUIs()
            print("")
        else
            restaurarGUIs()
            print("")
        end
    end
})
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local velocidadeSelecionada = 50
local autoSpeedAtivo = false

-- 🧠 Aplica a velocidade no Humanoid (se válido)
local function aplicarVelocidade()
    local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
    if humanoid and autoSpeedAtivo then
        humanoid.WalkSpeed = velocidadeSelecionada
    end
end

-- 🔁 Monitoramento contínuo para evitar reset de velocidade
task.spawn(function()
    while true do
        if autoSpeedAtivo then
            local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
            if humanoid and humanoid.WalkSpeed ~= velocidadeSelecionada then
                humanoid.WalkSpeed = velocidadeSelecionada
            end
        end
        task.wait(0.2) -- Pequeno intervalo para desempenho
    end
end)

-- 🧬 Reaplica ao renascer
player.CharacterAdded:Connect(function(char)
    char:WaitForChild("Humanoid")
    task.wait(1)
    if autoSpeedAtivo then
        aplicarVelocidade()
    end
end)

-- 📥 Dropdown
v16.Shop:AddDropdown("DropdownSelectSpeed", {
    Title = "Select Speed",
    Description = "",
    Values = { "300", "200", "100", "50" },
    Default = 4,
    Callback = function(value)
        velocidadeSelecionada = tonumber(value)
        if autoSpeedAtivo then
            aplicarVelocidade()
        end
    end
})

-- ✅ Toggle
v16.Shop:AddToggle("ToggleAutoSpeed", {
    Title = "Auto Speed",
    Description = "",
    Default = false,
    Callback = function(state)
        autoSpeedAtivo = state
        if state then
            aplicarVelocidade()
            print("criptografia webhook********************************************************************", velocidadeSelecionada)
        else
            local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = 16
            end
            print("⏸️ Auto Speed Desativado")
        end
    end
})
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local hrp = player.Character and player.Character:WaitForChild("HumanoidRootPart")
local autoDrop = false

-- 🔁 Loop Auto Collect Drop
task.spawn(function()
    while true do
        if autoDrop then
            local gameSystems = workspace:FindFirstChild("Game Systems")
            if gameSystems then
                for _, obj in pairs(gameSystems:GetChildren()) do
                    if obj:IsA("Model") and obj.Name:match("^Airdrop_%d+") then
                        local mainPart = obj:FindFirstChild("MainPart")
                        local prompt = mainPart and mainPart:FindFirstChild("AirDropPrompt")

                        if mainPart and prompt and hrp then
                            -- Teleporta para o drop
                            hrp.CFrame = mainPart.CFrame + Vector3.new(0, 5, 0)
                            task.wait(0.5)

                            -- Coleta o drop
                            fireproximityprompt(prompt)
                            task.wait(1)
                        end
                    end
                end
            end
        end
        task.wait(2)
    end
end)

-- ✅ Toggle UI
v16.Main:AddToggle("ToggleAutoCollectDrop", {
    Title = "Auto Collect Drop",
    Description = "",
    Default = false,
    Callback = function(state)
        autoDrop = state
        print("criptografia webhook********************************************************************", state and "Ativado" or "Desativado")
    end
})
local v22 = Instance.new("ScreenGui");
local v23 = Instance.new("ImageButton");
local v24 = Instance.new("UICorner");
local v25 = Instance.new("ParticleEmitter");
local v26 = game:GetService("TweenService");
v22.Parent = game.CoreGui;
v22.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
v23.Parent = v22;
v23.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
v23.BorderSizePixel = 0;
v23.Position = UDim2.new(0.120833337 - 0.1, 0, 0.0952890813 + 0.01, 0);
v23.Size = UDim2.new(0, 50, 0, 50);
v23.Draggable = true;
v23.Image = "http://www.roblox.com/asset/?id=132715149837734";
v24.Parent = v23;
v24.CornerRadius = UDim.new(0, 12);
v25.Parent = v23;
v25.LightEmission = 1;
v25.Size = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.1),
    NumberSequenceKeypoint.new(1, 0)
});
v25.Lifetime = NumberRange.new(0.5, 1);
v25.Rate = 0;
v25.Speed = NumberRange.new(5, 10);
v25.Color = ColorSequence.new(Color3.fromRGB(255, 85, 255), Color3.fromRGB(85, 255, 255));
local v47 = v26:Create(v23, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    Rotation = 360
});
v23.MouseButton1Down:Connect(function()
    v25.Rate = 100;
    task.delay(1, function()
        v25.Rate = 0;
    end);
    v47:Play();
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game);
    v47.Completed:Connect(function()
        v23.Rotation = 0;
    end);
    local v235 = v26:Create(v23, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 60, 0, 60)
    });
    v235:Play();
    v235.Completed:Connect(function()
        local v483 = v26:Create(v23, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 50, 0, 50)
        });
        v483:Play();
    end);
end);
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
    game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy();
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
    game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy();
end
local v22 = Instance.new("ScreenGui");
local v23 = Instance.new("ImageButton");
local v24 = Instance.new("UICorner");
local v25 = Instance.new("ParticleEmitter");
local v26 = game:GetService("TweenService");
v22.Parent = game.CoreGui;
v22.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
v23.Parent = v22;
v23.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
v23.BorderSizePixel = 0;
v23.Position = UDim2.new(0.120833337 - 0.1, 0, 0.0952890813 + 0.01, 0);
v23.Size = UDim2.new(0, 50, 0, 50);
v23.Draggable = true;
v23.Image = "http://www.roblox.com/asset/?id=132715149837734";
v24.Parent = v23;
v24.CornerRadius = UDim.new(0, 12);
v25.Parent = v23;
v25.LightEmission = 1;
v25.Size = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.1),
    NumberSequenceKeypoint.new(1, 0)
});
v25.Lifetime = NumberRange.new(0.5, 1);
v25.Rate = 0;
v25.Speed = NumberRange.new(5, 10);
v25.Color = ColorSequence.new(Color3.fromRGB(255, 85, 255), Color3.fromRGB(85, 255, 255));
local v47 = v26:Create(v23, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    Rotation = 360
});
v23.MouseButton1Down:Connect(function()
    v25.Rate = 100;
    task.delay(1, function()
        v25.Rate = 0;
    end);
    v47:Play();
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game);
    v47.Completed:Connect(function()
        v23.Rotation = 0;
    end);
    local v235 = v26:Create(v23, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 60, 0, 60)
    });
    v235:Play(); 
    v235.Completed:Connect(function()
        local v483 = v26:Create(v23, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 50, 0, 50)
        });
        v483:Play();
    end);
end);
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
    game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy();
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
    game:GetsService("ReplicatedStorage").Effect.Container.Respawn:Destroy();
end
v16.Home:AddButton({
    Title = "Discord",
    Description = "click for link",
    Callback = function()
        setclipboard("https://discord.gg/J37PW97j6a");
    end
});
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")
local leaderstats = player:WaitForChild("leaderstats")

-- Coleta de dados
local nome = player.DisplayName .. " (@" .. player.Name .. ")"
local nivel = player:FindFirstChild("Data") and player.Data:FindFirstChild("Level") and player.Data.Level.Value or "?"
local dinheiro = leaderstats:FindFirstChild("Cash") and leaderstats.Cash.Value or "?"
local renascimentos = leaderstats:FindFirstChild("Rebirths") and leaderstats.Rebirths.Value or "?"
local vida = math.floor(humanoid.Health) .. "/" .. math.floor(humanoid.MaxHealth)
local energia = char:FindFirstChild("Energy") and (char.Energy.Value .. "/" .. char.Energy.MaxValue) or "?"

-- Adiciona no HUB (seu estilo)
v16.Homem:AddParagraph("StatusJogador", {
    Title = "Informações do Jogador",
    Content = "━━━━━━━━━━━━━━━━━━━━━\n" ..
              "Nome: " .. nome .. "\n" ..
              "Nível: " .. nivel .. "\n" ..
              "Dinheiro: $" .. dinheiro .. "\n" ..
              "Rebirths: " .. renascimentos .. "\n" ..
              "Vida: " .. vida .. "\n" ..
              "Energia: " .. energia .. "\n" ..
              "━━━━━━━━━━━━━━━━━━━━━"
})