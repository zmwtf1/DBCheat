-- ts file was generated at discord.gg/25ms


local v1, _ = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nasrali11448/FaxvKM/refs/heads/main/Lib.lua", true))():CreateWindow("ah", 1, nil, nil):CreateTab("Premium", function()
end)
v1:CreateButton("Auto Win ( SOON )", function()
end)
local function vu5(pu2)
    function print()
    end
    function warn()
    end
    local v3, v4 = pcall(function()
        loadstring(game:HttpGet(pu2))()
    end)
    if not v3 then
        error("Error while executing: " .. tostring(v4))
    end
end
v1:CreateButton("Auto Bond", function()
    vu5("https://raw.githubusercontent.com/Nasrali11448/FaxvKM/refs/heads/main/Farm")
end)
v1:CreateButton("Temp Bypass AntiCheat", function()
    local vu6 = game:GetService("Players").LocalPlayer
    local vu7 = vu6.Character or vu6.CharacterAdded:Wait()
    local v8 = vu7
    vu7.WaitForChild(v8, "Humanoid")
    local v9 = vu7
    local vu10 = vu7.WaitForChild(v9, "HumanoidRootPart")
    local vu11 = vu10.Position
    local vu12 = nil
    local vu13 = vu10
    local vu14 = false
    local function vu20()
        vu12 = vu10:Clone()
        vu12.Name = "HumanoidRootPart"
        vu12.Parent = vu7
        vu13.Anchored = true
        vu13.CanCollide = false
        vu13.Transparency = 1
        vu13.Parent = workspace
        vu13.CFrame = CFrame.new(0, - 5000, 0)
        local v15 = vu7
        local v16, v17, v18 = pairs(v15:GetDescendants())
        while true do
            local v19
            v18, v19 = v16(v17, v18)
            if v18 == nil then
                break
            end
            if v19:IsA("Motor6D") and v19.Part0 == vu13 then
                v19.Part0 = vu12
            end
        end
        vu7:MoveTo(vu11 + Vector3.new(0, 1000000, 0))
        task.wait(0.2)
        vu7:MoveTo(vu11)
    end
    local function vu26()
        if vu12 then
            local v21 = vu7
            local v22, v23, v24 = pairs(v21:GetDescendants())
            while true do
                local v25
                v24, v25 = v22(v23, v24)
                if v24 == nil then
                    break
                end
                if v25:IsA("Motor6D") and v25.Part0 == vu12 then
                    v25.Part0 = vu13
                end
            end
            vu13.Parent = vu7
            vu13.Anchored = false
            vu13.CanCollide = true
            vu13.Transparency = 0
            vu12:Destroy()
            vu12 = nil
        end
    end;
    (function()
        local v27 = vu6
        local v28 = Instance.new("ScreenGui", v27:WaitForChild("PlayerGui"))
        local vu29 = Instance.new("TextButton", v28)
        vu29.Size = UDim2.new(0, 200, 0, 50)
        vu29.Position = UDim2.new(0, 20, 0, 20)
        vu29.Text = "Bypass: OFF"
        vu29.BackgroundColor3 = Color3.new(1, 0, 0)
        vu29.TextColor3 = Color3.new(1, 1, 1)
        vu29.Font = Enum.Font.SourceSansBold
        vu29.TextScaled = true
        vu29.Draggable = true
        vu29.MouseButton1Click:Connect(function()
            vu14 = not vu14
            if vu14 then
                vu29.Text = "Bypass: ON"
                vu29.BackgroundColor3 = Color3.new(0, 1, 0)
                vu20()
            else
                vu29.Text = "Bypass: OFF"
                vu29.BackgroundColor3 = Color3.new(1, 0, 0)
                vu26()
            end
        end)
    end)()
end)
v1:CreateButton("Bypass AntiCheat", function()
    local v30 = game:GetService("Players").LocalPlayer
    local vu31 = v30.Character or v30.CharacterAdded:Wait()
    local v32 = vu31:WaitForChild("Humanoid")
    local v33 = vu31:WaitForChild("HumanoidRootPart")
    local v34 = v33.Position
    local v35 = v33.Position
    local vu36 = v33:Clone()
    vu36.Name = "HumanoidRootPart"
    vu36.Parent = vu31
    local vu37 = v33
    vu37.Anchored = true
    vu37.CanCollide = false
    vu37.Transparency = 1
    vu37.Parent = workspace
    vu37.CFrame = CFrame.new(0, - 5000, 0)
    local v38, v39, v40 = pairs(vu31:GetDescendants())
    while true do
        local v41
        v40, v41 = v38(v39, v40)
        if v40 == nil then
            break
        end
        if v41:IsA("Motor6D") and v41.Part0 == vu37 then
            v41.Part0 = vu36
        end
    end
    vu31:MoveTo(v34 + Vector3.new(0, 1000000, 0))
    task.wait(0.2)
    vu31:MoveTo(v35)
    local vu42 = nil
    vu42 = v32.Seated:Connect(function(p43)
        if p43 then
            local v44 = vu31
            local v45, v46, v47 = pairs(v44:GetDescendants())
            while true do
                local v48
                v47, v48 = v45(v46, v47)
                if v47 == nil then
                    break
                end
                if v48:IsA("Motor6D") and v48.Part0 == vu36 then
                    v48.Part0 = vu37
                end
            end
            vu37.Parent = vu31
            vu37.Anchored = false
            vu37.CanCollide = true
            vu37.Transparency = 0
            vu36:Destroy()
            vu42:Disconnect()
        end
    end)
end)