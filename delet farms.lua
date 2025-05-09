local Players = game:GetService("Players")
local player = Players.LocalPlayer or Players:GetPlayerFromCharacter(script.Parent)
local character = player.Character or player.CharacterAdded:Wait()
local playerName = player.Name

-- Função para ativar prompts de proximidade
local function ativarPrompt(parte)
    for _, objeto in ipairs(parte:GetDescendants()) do
        if objeto:IsA("ProximityPrompt") and objeto.Enabled then
            fireproximityprompt(objeto)
            task.wait(objeto.HoldDuration + 0.1)
            return true
        end
    end
    return false
end

-- Função principal
local function protegerEFarmar()
    local mainFarmFolder = workspace:FindFirstChild("Farm")
    local minhaFazenda = nil
    local expectedText = playerName .. "'s Garden"

    -- Primeiro protege a farm do jogador
    if mainFarmFolder then
        -- Encontra e protege a farm pelo texto da placa
        for _, farm in ipairs(mainFarmFolder:GetChildren()) do
            if farm:IsA("Folder") or farm:IsA("Model") then
                -- Verifica pelo sistema de placa (primeiro script)
                local sign = farm:FindFirstChild("Sign")
                if sign then
                    local core = sign:FindFirstChild("Core_Part")
                    if core then
                        local surfaceGui = core:FindFirstChild("SurfaceGui")
                        if surfaceGui then
                            local textLabel = surfaceGui:FindFirstChild("TextLabel")
                            if textLabel and textLabel:IsA("TextLabel") and textLabel.Text == expectedText then
                                farm.Name = "ProtectedFarmTemp"
                                minhaFazenda = farm
                                break
                            end
                        end
                    end
                end
                
                -- Verifica pelo sistema de dados (segundo script)
                if not minhaFazenda then
                    local important = farm:FindFirstChild("Important")
                    local data = important and important:FindFirstChild("Data")
                    local owner = data and data:FindFirstChild("Owner")
                    
                    if owner and owner.Value == playerName then
                        farm.Name = "ProtectedFarmTemp"
                        minhaFazenda = farm
                        break
                    end
                end
            end
        end

        -- Remove outras farms
        for _, farm in ipairs(mainFarmFolder:GetChildren()) do
            if farm:IsA("Folder") or farm:IsA("Model") then
                if farm.Name == "Farm" then
                    farm:Destroy()
                    print("Farm de outro jogador removida")
                end
            end
        end

        -- Restaura o nome da farm protegida
        if minhaFazenda then
            minhaFazenda.Name = "Farm"
            print("Farm protegida e pronta para uso: " .. minhaFazenda.Name)
            
            -- Inicia o plantio automático
            local hrp = character:WaitForChild("HumanoidRootPart")
            local destino = minhaFazenda:FindFirstChild("PrimaryPart") or minhaFazenda:FindFirstChildWhichIsA("BasePart")
            
            if destino then
                hrp.CFrame = destino.CFrame + Vector3.new(0, 5, 0)
                task.wait(1)
                
                local locaisDePlantio = minhaFazenda.Important:FindFirstChild("Plant_Locations")
                if locaisDePlantio then
                    for _, localPlantio in ipairs(locaisDePlantio:GetChildren()) do
                        if localPlantio:IsA("BasePart") then
                            hrp.CFrame = localPlantio.CFrame + Vector3.new(0, 5, 0)
                            task.wait(0.2)
                            ativarPrompt(localPlantio)
                            task.wait(0.5) -- Tempo entre plantios
                        end
                    end
                    print("Plantio automático concluído!")
                else
                    warn("Locais de plantio não encontrados")
                end
            end
        else
            warn("Não foi possível encontrar sua farm")
        end
    else
        warn("Pasta Farm principal não encontrada no workspace")
    end
end

-- Inicia o processo
protegerEFarmar()
