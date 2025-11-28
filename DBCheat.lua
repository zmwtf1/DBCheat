local vu1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/refs/heads/main/source.lua"))()
function Credits()
    local vu2 = Instance.new("ScreenGui")
    local v3 = Instance.new("Frame")
    local v4 = Instance.new("TextLabel")
    local v5 = Instance.new("TextLabel")
    local v6 = Instance.new("TextButton")
    local v7 = Instance.new("TextButton")
    vu2.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    vu2.ResetOnSpawn = false
    v3.Size = UDim2.new(0, 400, 0, 200)
    v3.Position = UDim2.new(0.5, - 200, 0.5, - 100)
    v3.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    v3.BorderSizePixel = 2
    v3.BorderColor3 = Color3.fromRGB(255, 255, 0)
    v3.Parent = vu2
    v4.Text = "Credits"
    v4.Font = Enum.Font.GothamBold
    v4.TextSize = 30
    v4.TextColor3 = Color3.fromRGB(255, 255, 255)
    v4.Size = UDim2.new(1, 0, 0, 40)
    v4.BackgroundTransparency = 1
    v4.Parent = v3
    v5.Text = "Join our discord server to get all the updates and report bugs"
    v5.Font = Enum.Font.Gotham
    v5.TextSize = 18
    v5.TextColor3 = Color3.fromRGB(200, 200, 200)
    v5.Size = UDim2.new(1, - 20, 0, 40)
    v5.Position = UDim2.new(0, 10, 0, 50)
    v5.BackgroundTransparency = 1
    v5.TextWrapped = true
    v5.Parent = v3
    v6.Text = "Cancel"
    v6.Font = Enum.Font.Gotham
    v6.TextSize = 20
    v6.TextColor3 = Color3.fromRGB(255, 255, 255)
    v6.Size = UDim2.new(0, 150, 0, 40)
    v6.Position = UDim2.new(0, 20, 0, 120)
    v6.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
    v6.Parent = v3
    v7.Text = "Join"
    v7.Font = Enum.Font.Gotham
    v7.TextSize = 20
    v7.TextColor3 = Color3.fromRGB(255, 255, 255)
    v7.Size = UDim2.new(0, 150, 0, 40)
    v7.Position = UDim2.new(1, - 170, 0, 120)
    v7.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
    v7.Parent = v3
    v6.MouseButton1Click:Connect(function()
        vu2:Destroy()
    end)
    v7.MouseButton1Click:Connect(function()
        setclipboard("https://discord.gg/Kcz3j2mgjK")
        vu2:Destroy()
        vu1:Notify({
            Title = "Info",
            Content = "Copied discord server link",
            Duration = 7,
            Image = 121839800308542
        })
    end)
end
local v8 = game:GetService("Players").LocalPlayer.Name
local v9 = game.PlaceId
if v9 == 116495829188952 then
    local v10 = vu1
    vu1.Notify(v10, {
        Title = "Welcome, " .. v8,
        Content = "Made by the_king.78",
        Duration = 7,
        Image = 110770571214248
    })
    local v11 = vu1
    vu1.CreateWindow(v11, {
        Name = "DBCheatKM [Lobby]",
        SaveConfig = true,
        DisableRayfieldPrompts = true
    }):CreateTab("Info", 113608433727038):CreateButton({
        Name = "Show Credits",
        Callback = function()
            Credits()
        end
    })
elseif v9 == 70876832253163 then
    local v12 = game:GetService("Players").LocalPlayer.Name
    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    local _ = game:GetService("Players").LocalPlayer
    if not game:GetService("Players").LocalPlayer.Character then
        game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
    end
    local v13 = vu1
    vu1.Notify(v13, {
        Title = "Welcome, " .. v12,
        Content = "Made by the_king.78",
        Duration = 7,
        Image = 110770571214248
    })
    local v14 = vu1
    local v15 = vu1.CreateWindow(v14, {
        Name = "DBCheatKM V4.1.1",
        SaveConfig = true,
        DisableRayfieldPrompts = true
    })
    function LoadIY()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Nasrali11448/FaxvKM/refs/heads/main/IYRB.lua"))()
    end
    local function vu18()
        local v16 = game:GetService("CoreGui"):FindFirstChild("RobloxGui", true)
        if v16 then
            local v17 = v16:FindFirstChild("NotificationScript2")
            if v17 and v17:IsA("LocalScript") then
                v17.Enabled = false
            end
        end
    end
    local function vu22(pu19)
        function print()
        end
        function warn()
        end
        local v20, v21 = pcall(function()
            loadstring(game:HttpGet(pu19))()
        end)
        if not v20 then
            error("Error while executing: " .. tostring(v21))
        end
    end
    local v23 = v15:CreateTab("Player", 18869985447)
    local vu24 = game:GetService("UserInputService")
    local vu25 = game:GetService("RunService")
    local vu26 = game:GetService("Players").LocalPlayer
    local vu27 = 3
    local vu28 = 0
    local vu29 = false
    local vu30 = nil
    local vu31 = nil
    local function vu33(p32)
        return p32.FloorMaterial ~= Enum.Material.Air
    end
    local function vu36()
        vu28 = 0
        vu30 = vu24.JumpRequest:Connect(function()
            local v34 = vu26.Character
            if v34 then
                v34 = v34:FindFirstChildWhichIsA("Humanoid")
            end
            if v34 then
                if vu33(v34) then
                    vu28 = 0
                end
                if vu28 < vu27 then
                    vu28 = vu28 + 1
                    v34:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end
        end)
        vu31 = vu25.Heartbeat:Connect(function()
            local v35 = vu26.Character
            if v35 then
                v35 = v35:FindFirstChildWhichIsA("Humanoid")
            end
            if v35 and vu33(v35) then
                vu28 = 0
            end
        end)
    end
    local function vu37()
        if vu30 then
            vu30:Disconnect()
        end
        if vu31 then
            vu31:Disconnect()
        end
        vu28 = 0
    end
    v23:CreateToggle({
        Name = "Triple Jump",
        Default = false,
        Callback = function(p38)
            vu29 = p38
            if vu29 then
                vu36()
            else
                vu37()
            end
        end
    })
    local vu39 = false
    local vu40 = game.Players.LocalPlayer
    local vu41 = nil
    local vu42 = false
    local function vu43()
        vu41 = (vu40.Character or vu40.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
        return vu41
    end
    v23:CreateToggle({
        Name = "High Jump",
        Default = false,
        Callback = function(p44)
            vu39 = p44
            vu41 = vu43()
            if vu41 then
                if vu39 then
                    vu41.JumpHeight = 15
                    if not vu42 then
                        vu42 = true
                        while vu39 do
                            wait(0.1)
                            if vu41.JumpHeight ~= 15 then
                                vu41.JumpHeight = 15
                            end
                        end
                        vu42 = false
                    end
                else
                    wait(0.2)
                    vu41.JumpHeight = 7.199999809265137
                end
            end
        end
    })
    local vu45 = false
    local vu46 = nil
    local vu47 = nil
    local vu61 = v23:CreateToggle({
        Name = "Noclip",
        Default = false,
        Callback = function(p48)
            vu45 = p48
            if vu45 then
                if vu40.Character then
                    vu46 = game:GetService("RunService").Stepped:Connect(function()
                        local v49, v50, v51 = pairs(vu40.Character:GetChildren())
                        while true do
                            local v52
                            v51, v52 = v49(v50, v51)
                            if v51 == nil then
                                break
                            end
                            if v52:IsA("BasePart") then
                                v52.CanCollide = false
                            end
                        end
                    end)
                    vu47 = vu40.Character:WaitForChild("Head").Changed:Connect(function()
                        local v53, v54, v55 = pairs(vu40.Character:GetChildren())
                        while true do
                            local v56
                            v55, v56 = v53(v54, v55)
                            if v55 == nil then
                                break
                            end
                            if v56:IsA("BasePart") then
                                v56.CanCollide = false
                            end
                        end
                    end)
                end
            else
                if vu46 then
                    vu46:Disconnect()
                    vu46 = nil
                end
                if vu47 then
                    vu47:Disconnect()
                    vu47 = nil
                end
                if vu40.Character then
                    local v57, v58, v59 = pairs(vu40.Character:GetChildren())
                    while true do
                        local v60
                        v59, v60 = v57(v58, v59)
                        if v59 == nil then
                            break
                        end
                        if v60:IsA("BasePart") then
                            v60.CanCollide = true
                        end
                    end
                end
            end
        end
    })
    vu40.CharacterAdded:Connect(function(pu62)
        if vu45 then
            if vu46 then
                vu46:Disconnect()
                vu46 = nil
            end
            if vu47 then
                vu47:Disconnect()
                vu47 = nil
            end
            vu46 = game:GetService("RunService").Stepped:Connect(function()
                local v63 = pu62
                local v64, v65, v66 = pairs(v63:GetChildren())
                while true do
                    local v67
                    v66, v67 = v64(v65, v66)
                    if v66 == nil then
                        break
                    end
                    if v67:IsA("BasePart") then
                        v67.CanCollide = false
                    end
                end
            end)
            vu47 = pu62:WaitForChild("Head").Changed:Connect(function()
                local v68 = pu62
                local v69, v70, v71 = pairs(v68:GetChildren())
                while true do
                    local v72
                    v71, v72 = v69(v70, v71)
                    if v71 == nil then
                        break
                    end
                    if v72:IsA("BasePart") then
                        v72.CanCollide = false
                    end
                end
            end)
        end
    end)
    local v73 = v15:CreateTab("Main", 72270721405146)
    local vu74 = false
    local vu75 = 136
    local v76 = game:GetService("RunService")
    game:GetService("UserInputService")
    local vu77 = workspace.CurrentCamera
    local vu78 = game:GetService("Players").LocalPlayer
    local vu79 = Drawing.new("Circle")
    vu79.Thickness = 2
    vu79.Color = Color3.fromRGB(255, 0, 0)
    vu79.Filled = false
    vu79.Radius = vu75
    vu79.Position = vu77.ViewportSize / 2
    vu79.Visible = false
    local vu80 = {}
    local vu81 = RaycastParams.new()
    vu81.FilterType = Enum.RaycastFilterType.Blacklist
    local function vu84(p82)
        local v83 = p82:IsA("Model") and p82:FindFirstChild("Humanoid") and (p82.Humanoid.Health > 0 and (p82:FindFirstChild("Head") and p82:FindFirstChild("HumanoidRootPart")))
        if v83 then
            v83 = not game:GetService("Players"):GetPlayerFromCharacter(p82)
        end
        return v83
    end
    local function vu94()
        local v85, v86, v87 = ipairs(workspace:GetDescendants())
        local v88 = {}
        while true do
            local v89
            v87, v89 = v85(v86, v87)
            if v87 == nil then
                break
            end
            if vu84(v89) then
                v88[v89] = true
            end
        end
        for v90 = # vu80, 1, - 1 do
            if not v88[vu80[v90] ] then
                table.remove(vu80, v90)
            end
        end
        local v91, v92, v93 = pairs(v88)
        while true do
            v93 = v91(v92, v93)
            if v93 == nil then
                break
            end
            if not table.find(vu80, v93) then
                table.insert(vu80, v93)
            end
        end
    end
    local function vu100(p95)
        local v96 = p95:FindFirstChild("HumanoidRootPart")
        local v97 = p95:FindFirstChild("Head")
        if v96 and v97 then
            local v98 = v96.Velocity
            return v96.Position + v98 * 0.02 + (v97.Position - v96.Position)
        end
        local v99 = v97 and v97.Position
        if v99 then
            v96 = v99
        elseif v96 then
            v96 = v96.Position
        end
        return v96
    end
    local function vu114()
        local v101 = math.huge
        local v102 = vu77.ViewportSize / 2
        vu81.FilterDescendantsInstances = {
            vu78.Character
        }
        local v103, v104, v105 = ipairs(vu80)
        local v106 = 35
        local v107 = nil
        while true do
            local v108
            v105, v108 = v103(v104, v105)
            if v105 == nil then
                break
            end
            local v109 = vu100(v108)
            local v110, v111 = vu77:WorldToViewportPoint(v109)
            if v111 and (v110.Z > 0 and (vu78.Character.HumanoidRootPart.Position - v108.HumanoidRootPart.Position).Magnitude <= v106) then
                local v112 = workspace:Raycast(vu77.CFrame.Position, (v109 - vu77.CFrame.Position).Unit * 1000, vu81)
                if v112 and v112.Instance:IsDescendantOf(v108) then
                    local v113 = (Vector2.new(v110.X, v110.Y) - v102).Magnitude
                    if v113 < v101 then
                        if v113 < vu75 then
                            v107 = v108
                            v101 = v113
                        end
                    end
                end
            end
        end
        return v107
    end
    local function vu119(p115)
        local v116 = vu77.CFrame
        local v117 = (p115 - v116.Position).Unit
        local v118 = v116.LookVector:Lerp(v117, 0.581)
        vu77.CFrame = CFrame.new(v116.Position, v116.Position + v118)
    end
    v76.Heartbeat:Connect(function(_)
        vu79.Position = vu77.ViewportSize / 2
        vu79.Radius = vu75 * (vu77.ViewportSize.Y / 1080)
        if vu74 then
            vu94()
            local v120 = vu114()
            if v120 then
                vu119((vu100(v120)))
            end
        end
    end)
    workspace.DescendantAdded:Connect(function(p121)
        if vu84(p121) then
            table.insert(vu80, p121)
        end
    end)
    workspace.DescendantRemoving:Connect(function(p122)
        if vu84(p122) then
            for v123 = # vu80, 1, - 1 do
                if vu80[v123] == p122 then
                    table.remove(vu80, v123)
                    break
                end
            end
        end
    end)
    v73:CreateToggle({
        Name = "Mob AimBot",
        Default = false,
        Callback = function(p124)
            vu74 = p124
            vu79.Visible = p124
        end
    })
    local vu125 = game:GetService("Players")
    local vu126 = vu125.LocalPlayer
    local vu127 = game:GetService("RunService")
    local vu128 = workspace.CurrentCamera
    local vu129 = false
    local vu130 = nil
    local function vu146()
        local v131 = math.huge
        local v132, v133, v134 = ipairs(workspace:GetDescendants())
        local v135 = nil
        while true do
            local v136
            v134, v136 = v132(v133, v134)
            if v134 == nil then
                return v135
            end
            if v136:IsA("Model") then
                local v137 = v136:FindFirstChild("Humanoid") or v136:FindFirstChildWhichIsA("Humanoid")
                local v138 = v136:FindFirstChild("HumanoidRootPart") or v136.PrimaryPart
                if v137 and (v138 and (v137.Health > 0 and v136.Name ~= "Horse")) then
                    local v139 = vu125
                    local v140, v141, v142 = ipairs(v139:GetPlayers())
                    local v143 = false
                    while true do
                        local v144
                        v142, v144 = v140(v141, v142)
                        if v142 == nil then
                            break
                        end
                        if v144.Character == v136 then
                            v143 = true
                            break
                        end
                    end
                    if not v143 then
                        local v145 = (v138.Position - vu126.Character.HumanoidRootPart.Position).Magnitude
                        if v145 < v131 then
                            v135 = v136
                            v131 = v145
                        end
                    end
                end
            end
        end
    end
    local vu149 = v73:CreateToggle({
        Name = "NPC Lock",
        Default = false,
        Callback = function(p147)
            vu129 = p147
            if vu129 then
                vu126.CameraMode = Enum.CameraMode.Classic
                vu126.CameraMaxZoomDistance = 50
                vu126.CameraMinZoomDistance = 15
                vu130 = vu127.RenderStepped:Connect(function()
                    local v148 = vu146()
                    if v148 and (v148:FindFirstChild("Humanoid") and v148.Humanoid.Health > 0) then
                        vu128.CameraSubject = v148.Humanoid
                    elseif vu126.Character and vu126.Character:FindFirstChild("Humanoid") then
                        vu128.CameraSubject = vu126.Character.Humanoid
                    end
                end)
            else
                vu126.CameraMode = Enum.CameraMode.LockFirstPerson
                vu126.CameraMaxZoomDistance = 0
                vu126.CameraMinZoomDistance = 0
                if vu130 then
                    vu130:Disconnect()
                    vu130 = nil
                end
                if vu126.Character and vu126.Character:FindFirstChild("Humanoid") then
                    vu128.CameraSubject = vu126.Character.Humanoid
                end
            end
        end
    })
    local vu150 = false
    _G.HeadSize = 14
    local function vu157()
        local v151, v152, v153 = pairs(workspace:GetDescendants())
        while true do
            local vu154
            v153, vu154 = v151(v152, v153)
            if v153 == nil then
                break
            end
            if vu154:IsA("Model") and vu154:FindFirstChild("Humanoid") and not game:GetService("Players"):GetPlayerFromCharacter(vu154) then
                pcall(function()
                    local v155 = vu154:FindFirstChild("HumanoidRootPart")
                    local v156 = vu154:FindFirstChild("Humanoid")
                    if v155 then
                        v155.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                        v155.Transparency = 0.7
                        v155.BrickColor = BrickColor.new("Really black")
                        v155.Material = Enum.Material.Neon
                        v155.CanCollide = false
                    end
                    if v156 then
                        v156.WalkSpeed = 0
                        v156:ChangeState(Enum.HumanoidStateType.Physics)
                        v156:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
                    end
                end)
            end
        end
    end
    v73:CreateToggle({
        Name = "Mob HitBox",
        Default = false,
        Callback = function(p158)
            vu150 = p158
            if vu150 then
                game:GetService("RunService").RenderStepped:Connect(function()
                    if vu150 then
                        vu157()
                    end
                end)
            else
                local v159, v160, v161 = pairs(workspace:GetDescendants())
                while true do
                    local vu162
                    v161, vu162 = v159(v160, v161)
                    if v161 == nil then
                        break
                    end
                    if vu162:IsA("Model") and vu162:FindFirstChild("Humanoid") and not game:GetService("Players"):GetPlayerFromCharacter(vu162) then
                        pcall(function()
                            local v163 = vu162:FindFirstChild("HumanoidRootPart")
                            local v164 = vu162:FindFirstChild("Humanoid")
                            if v163 then
                                v163.Size = Vector3.new(2, 2, 2)
                                v163.Transparency = 0
                                v163.BrickColor = BrickColor.new("Bright blue")
                                v163.Material = Enum.Material.SmoothPlastic
                                v163.CanCollide = true
                            end
                            if v164 then
                                v164.WalkSpeed = 16
                                v164:ChangeState(Enum.HumanoidStateType.Physics)
                                v164:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
                            end
                        end)
                    end
                end
            end
        end
    })
    local vu165 = false
    local vu166 = nil
    local vu167 = game:GetService("RunService")
    local vu168 = game:GetService("Players")
    local v169 = vu168.LocalPlayer
    local vu170 = v169.Character or v169.CharacterAdded:Wait()
    v73:CreateToggle({
        Name = "Kill Aura",
        Default = false,
        Callback = function(p171)
            vu165 = p171
            if vu165 then
                local function vu174(pu172)
                    if not pu172:FindFirstChild("__BeingKilled") then
                        local vu173 = Instance.new("BoolValue")
                        vu173.Name = "__BeingKilled"
                        vu173.Parent = pu172
                        task.spawn(function()
                            while pu172.Health > 0 and vu165 do
                                pu172:TakeDamage(5)
                                task.wait(0.05)
                            end
                            if vu173.Parent then
                                vu173:Destroy()
                            end
                        end)
                    end
                end
                local function vu183()
                    local v175, v176, v177 = ipairs(workspace:GetDescendants())
                    local v178 = {}
                    while true do
                        local v179
                        v177, v179 = v175(v176, v177)
                        if v177 == nil then
                            break
                        end
                        if v179:IsA("Model") then
                            local v180 = v179:FindFirstChildOfClass("Humanoid")
                            if v180 and v180.Health > 0 and not vu168:GetPlayerFromCharacter(v179) then
                                local v181 = v179:FindFirstChild("HumanoidRootPart")
                                local v182 = vu170:FindFirstChild("HumanoidRootPart")
                                if v181 and (v182 and (v181.Position - v182.Position).Magnitude <= 30) then
                                    table.insert(v178, v180)
                                end
                            end
                        end
                    end
                    return v178
                end
                vu166 = vu167.Heartbeat:Connect(function()
                    if vu165 and (vu170 and vu170.Parent) then
                        local v184, v185, v186 = ipairs(vu183())
                        while true do
                            local v187
                            v186, v187 = v184(v185, v186)
                            if v186 == nil then
                                break
                            end
                            if v187.Health <= 0 then
                                if v187.Parent and not v187:FindFirstChild("__BeingKilled") then
                                    vu174(v187)
                                end
                            else
                                v187:TakeDamage(5)
                            end
                        end
                    end
                end)
            elseif vu166 then
                vu166:Disconnect()
                vu166 = nil
            end
        end
    })
    local vu188 = false
    local vu189 = game.Players.LocalPlayer
    local vu190 = nil
    local vu191 = nil
    v73:CreateToggle({
        Name = "Auto Collect Money Bag",
        Default = false,
        Callback = function(p192)
            vu188 = p192
        end
    })
    local function vu197()
        if fireproximityprompt then
            local v193, v194, v195 = ipairs(workspace:GetDescendants())
            while true do
                local v196
                v195, v196 = v193(v194, v195)
                if v195 == nil then
                    break
                end
                if v196:IsA("ProximityPrompt") then
                    fireproximityprompt(v196)
                end
            end
        end
    end
    game:GetService("RunService").Heartbeat:Connect(function()
        if vu188 then
            local v198 = workspace:FindFirstChild("RuntimeItems")
            if v198 then
                v198 = workspace.RuntimeItems:FindFirstChild("Moneybag")
            end
            if v198 then
                vu190 = not (vu190 and vu190.Parent) and v198:FindFirstChild("MoneyBag")
                if vu190 then
                    vu191 = vu190:FindFirstChild("CollectPrompt")
                end
                if vu190 and vu191 then
                    local v199 = vu189.Character
                    if v199 and (v199:FindFirstChild("HumanoidRootPart") and (v199.HumanoidRootPart.Position - vu190.Position).Magnitude <= 99999) then
                        vu197()
                    end
                end
            end
        end
    end)
    ProximityPromptService = (cloneref or function(p200)
        return p200
    end)(game:GetService("ProximityPromptService"))
    local vu201 = false
    local vu202 = nil
    v73:CreateToggle({
        Name = "Instant Purchase & Collect",
        Default = false,
        Callback = function(p203)
            vu201 = p203
            if not vu201 and vu202 then
                vu202:Disconnect()
                vu202 = nil
            end
        end
    })
    ProximityPromptService.PromptButtonHoldBegan:Connect(function(_)
        if vu201 then
            if not vu202 then
                vu202 = ProximityPromptService.PromptButtonHoldBegan:Connect(function(p204)
                    fireproximityprompt(p204)
                end)
            end
        elseif vu202 then
            vu202:Disconnect()
            vu202 = nil
        end
    end)
    local vu205 = false
    local vu206 = nil
    v73:CreateToggle({
        Name = "Instant Use Items",
        Default = false,
        Callback = function(p207)
            vu205 = p207
            if vu205 then
                local v208 = game:GetService("Players").LocalPlayer
                local vu209 = v208.PlayerGui:WaitForChild("BandageUse")
                local function vu210()
                    if vu209.Enabled then
                        game:GetService("Players").LocalPlayer.Character.Bandage.Use:FireServer()
                    end
                end
                vu206 = game:GetService("RunService").RenderStepped:Connect(function()
                    vu210()
                end)
                local function vu211()
                    if vu206 then
                        vu206:Disconnect()
                    end
                end
                v208.CharacterAdded:Connect(function(p212)
                    local v213 = p212:WaitForChild("Bandage", 10)
                    if v213 then
                        v213.Unequipped:Connect(vu211)
                    end
                end)
            elseif vu206 then
                vu206:Disconnect()
            end
        end
    })
    local vu214 = false
    local vu215 = nil
    v73:CreateToggle({
        Name = "Auto Pickup Bandage",
        Default = false,
        Callback = function(p216)
            vu214 = p216
            if vu214 then
                vu215 = task.spawn(function()
                    while vu214 do
                        local v217 = workspace.RuntimeItems:FindFirstChild("Bandage")
                        if v217 then
                            game:GetService("ReplicatedStorage").Remotes.Tool.PickUpTool:FireServer(v217)
                        end
                        task.wait(0.3)
                    end
                end)
            end
        end
    })
    local vu218 = false
    local vu219 = nil
    v73:CreateToggle({
        Name = "Auto Pickup Snake Oil",
        Default = false,
        Callback = function(p220)
            vu218 = p220
            if vu218 then
                vu219 = task.spawn(function()
                    while vu218 do
                        local v221 = workspace.RuntimeItems:FindFirstChild("Snake Oil")
                        if v221 then
                            game:GetService("ReplicatedStorage").Remotes.Tool.PickUpTool:FireServer(v221)
                        end
                        task.wait(0.3)
                    end
                end)
            end
        end
    })
    local vu222 = false
    local vu223 = nil
    local vu224 = game.Players.LocalPlayer
    local vu225 = vu224.Character
    if vu225 then
        vu225 = vu224.Character:FindFirstChild("HumanoidRootPart")
    end
    v73:CreateToggle({
        Name = "Auto Collect Bond",
        Default = false,
        Callback = function(p226)
            vu222 = p226
            if vu222 then
                vu223 = task.spawn(function()
                    while vu222 do
                        local v227 = vu224.Character
                        if v227 then
                            v227 = vu224.Character:FindFirstChild("HumanoidRootPart")
                        end
                        vu225 = v227
                        if vu225 then
                            local v228, v229, v230 = ipairs(workspace.RuntimeItems:GetChildren())
                            local v231 = 0
                            while true do
                                local v232
                                v230, v232 = v228(v229, v230)
                                if v230 == nil then
                                    break
                                end
                                if v232.Name == "Bond" then
                                    local v233 = v232:FindFirstChildWhichIsA("BasePart")
                                    if v233 and (v233.Position - vu225.Position).Magnitude <= 50 then
                                        v231 = v231 + 1
                                        local v234 = v232.Name
                                        v232.Name = "children" .. tostring(v231)
                                        game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Network"):WaitForChild("RemotePromise"):WaitForChild("Remotes"):WaitForChild("C_ActivateObject"):FireServer(unpack({
                                            v232
                                        }))
                                        v232.Name = v234
                                    end
                                end
                            end
                        end
                        task.wait(0.3)
                    end
                end)
            end
        end
    })
    local vu235 = false
    local vu236 = workspace:WaitForChild("RuntimeItems")
    local vu237 = {}
    local function vu240(p238)
        local v239 = vu237[p238]
        if v239 then
            v239:Destroy()
            vu237[p238] = nil
        end
    end
    local function vu246(pu241)
        local v242 = pu241:GetAttribute("Value")
        if v242 ~= nil and v242 ~= 0 then
            local v243 = Instance.new("BillboardGui")
            v243.Name = "ValueBillboard"
            v243.Size = UDim2.new(0, 100, 0, 20)
            v243.StudsOffset = Vector3.new(0, 2, 0)
            v243.AlwaysOnTop = true
            v243.Adornee = pu241
            v243.MaxDistance = 40
            local vu244 = Instance.new("TextLabel")
            vu244.Size = UDim2.new(1, 0, 1, 0)
            vu244.BackgroundTransparency = 1
            vu244.TextColor3 = Color3.fromRGB(2, 93, 0)
            vu244.TextStrokeTransparency = 0.5
            vu244.Text = "$ " .. tostring(v242)
            vu244.Font = Enum.Font.GothamBold
            vu244.TextScaled = false
            vu244.TextSize = 24
            vu244.Parent = v243
            v243.Parent = pu241
            vu237[pu241] = v243
            pu241:GetAttributeChangedSignal("Value"):Connect(function()
                local v245 = pu241:GetAttribute("Value")
                if v245 and v245 ~= 0 then
                    vu244.Text = "$ " .. tostring(v245)
                else
                    vu240(pu241)
                end
            end)
        end
    end
    local vu247 = nil
    local vu248 = nil
    v73:CreateToggle({
        Name = "Show Items Price",
        Default = false,
        Callback = function(p249)
            vu235 = p249
            if vu235 then
                local v250 = vu236
                local v251, v252, v253 = ipairs(v250:GetChildren())
                while true do
                    local v254
                    v253, v254 = v251(v252, v253)
                    if v253 == nil then
                        break
                    end
                    if v254:GetAttribute("Value") and v254:GetAttribute("Value") ~= 0 then
                        vu246(v254)
                    end
                end
                vu247 = vu236.ChildAdded:Connect(function(p255)
                    task.wait()
                    if vu235 and (p255:GetAttribute("Value") and p255:GetAttribute("Value") ~= 0) then
                        vu246(p255)
                    end
                end)
                vu248 = vu236.ChildRemoved:Connect(function(p256)
                    vu240(p256)
                end)
            else
                if vu247 then
                    vu247:Disconnect()
                end
                if vu248 then
                    vu248:Disconnect()
                end
                local v257, v258, v259 = pairs(vu237)
                while true do
                    local v260
                    v259, v260 = v257(v258, v259)
                    if v259 == nil then
                        break
                    end
                    vu240(v259)
                end
                vu237 = {}
            end
        end
    })
    local vu261 = false
    local vu262 = workspace:WaitForChild("RuntimeItems")
    local vu263 = workspace:WaitForChild("StartingZone"):WaitForChild("Buildings"):WaitForChild("GeneralStore"):WaitForChild("CommonLootTable"):WaitForChild("ShopItems")
    local vu274 = (function()
        local v264, v265, v266 = ipairs({
            "default",
            "armored",
            "gold",
            "cattle"
        })
        while true do
            local v267
            v266, v267 = v264(v265, v266)
            if v266 == nil then
                break
            end
            local v268, v269, v270 = ipairs(workspace:GetChildren())
            while true do
                local vu271
                v270, vu271 = v268(v269, v270)
                if v270 == nil then
                    break
                end
                if typeof(vu271.Name) == "string" and vu271.Name:lower() == v267 then
                    local v272, v273 = pcall(function()
                        return vu271:WaitForChild("Visual"):WaitForChild("Main"):WaitForChild("FireBase")
                    end)
                    if v272 then
                        return v273
                    end
                end
            end
        end
        return nil
    end)()
    local vu275 = game:GetService("TweenService")
    local vu276 = game:GetService("RunService")
    local vu277 = {}
    local vu278 = nil
    local function vu284(p279)
        local v280, v281, v282 = ipairs(p279:GetDescendants())
        while true do
            local v283
            v282, v283 = v280(v281, v282)
            if v282 == nil then
                break
            end
            if v283:IsA("Attachment") and v283.Name == "DragAttachment" then
                return v283
            end
        end
        return nil
    end
    local function vu290(pu285, p286)
        if vu277[pu285] then
            return
        else
            local v287 = p286.Parent
            if v287:IsA("BasePart") then
                local v288 = CFrame.new(vu274.Position)
                local v289 = vu275:Create(v287, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                    CFrame = v288
                })
                v289:Play()
                v289.Completed:Connect(function()
                    vu277[pu285] = nil
                end)
                vu277[pu285] = true
            end
        end
    end
    local function vu294(pu291)
        if pu291:GetAttribute("Fuel") ~= nil then
            pu291:GetAttributeChangedSignal("IsBeingDragged"):Connect(function()
                local v292 = pu291:GetAttribute("IsBeingDragged") == true and vu284(pu291)
                if v292 then
                    vu290(pu291, v292)
                end
            end)
            local v293 = pu291:GetAttribute("IsBeingDragged") == true and vu284(pu291)
            if v293 then
                vu290(pu291, v293)
            end
        end
    end
    local function vu301(p295)
        local v296, v297, v298 = ipairs(p295:GetChildren())
        while true do
            local v299
            v298, v299 = v296(v297, v298)
            if v298 == nil then
                break
            end
            vu294(v299)
        end
        p295.ChildAdded:Connect(function(p300)
            p300:GetPropertyChangedSignal("Parent"):Wait()
            task.wait(0.1)
            vu294(p300)
        end)
    end
    local function vu312()
        vu301(vu262)
        vu301(vu263)
        if vu278 then
            vu278:Disconnect()
        end
        vu278 = vu276.Heartbeat:Connect(function()
            if vu261 then
                local v302 = {
                    vu262,
                    vu263
                }
                local v303, v304, v305 = ipairs(v302)
                while true do
                    local v306
                    v305, v306 = v303(v304, v305)
                    if v305 == nil then
                        break
                    end
                    local v307, v308, v309 = ipairs(v306:GetChildren())
                    while true do
                        local v310
                        v309, v310 = v307(v308, v309)
                        if v309 == nil then
                            break
                        end
                        if v310:GetAttribute("Fuel") ~= nil and v310:GetAttribute("IsBeingDragged") == true then
                            local v311 = vu284(v310)
                            if v311 then
                                vu290(v310, v311)
                            end
                        end
                    end
                end
            elseif vu278 then
                vu278:Disconnect()
                vu278 = nil
            end
        end)
    end
    v73:CreateLabel("Auto Refuel can also steal coal from store")
    v73:CreateToggle({
        Name = "Auto Refuel",
        Default = false,
        Callback = function(p313)
            vu261 = p313
            if vu261 then
                vu312()
            end
        end
    })
    local function vu326(pu314)
        local v315, v316, v317 = ipairs({
            "default",
            "armored",
            "gold",
            "cattle"
        })
        while true do
            local v318
            v317, v318 = v315(v316, v317)
            if v317 == nil then
                break
            end
            local v319, v320, v321 = ipairs(workspace:GetChildren())
            while true do
                local vu322
                v321, vu322 = v319(v320, v321)
                if v321 == nil then
                    break
                end
                if typeof(vu322.Name) == "string" and vu322.Name:lower() == v318 then
                    local v324, v325 = pcall(function()
                        local v323 = vu322:WaitForChild("RequiredComponents"):WaitForChild("Controls")
                        if pu314 == "Fuel" then
                            return v323:WaitForChild("Fuel")
                        end
                        if pu314 == "TimeDial" then
                            return v323:WaitForChild("TimeDial"):WaitForChild("SurfaceGui"):WaitForChild("TextLabel")
                        end
                        if pu314 == "DistanceDial" then
                            local _ = v323:WaitForChild("DistanceDial"):WaitForChild("SurfaceGui").WaitForChild
                        end
                    end)
                    if v324 and v325 then
                        return v325
                    end
                end
            end
        end
        return nil
    end
    local vu327 = false
    v73:CreateToggle({
        Name = "Show Time",
        Default = false,
        Callback = function(p328)
            vu327 = p328
            if vu327 then
                local vu329 = vu326("TimeDial")
                if not vu329 then
                    return
                end
                local v330 = Instance.new("ScreenGui")
                v330.Name = "TimeDisplay"
                v330.ResetOnSpawn = false
                v330.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
                local vu331 = Instance.new("TextLabel")
                vu331.Size = UDim2.new(0, 200, 0, 30)
                vu331.Position = UDim2.new(0, 0, 0.4, - 20)
                vu331.BackgroundTransparency = 1
                vu331.TextColor3 = Color3.new(1, 1, 1)
                vu331.TextScaled = true
                vu331.Font = Enum.Font.SourceSans
                vu331.Text = vu329.Text
                vu331.Parent = v330
                vu329:GetPropertyChangedSignal("Text"):Connect(function()
                    vu331.Text = vu329.Text
                end)
            else
                local v332 = game.Players.LocalPlayer:FindFirstChild("PlayerGui")
                local v333 = v332 and v332:FindFirstChild("TimeDisplay")
                if v333 then
                    v333:Destroy()
                end
            end
        end
    })
    local vu334 = false
    v73:CreateToggle({
        Name = "Show Distance",
        Default = false,
        Callback = function(p335)
            vu334 = p335
            if vu334 then
                local vu336 = vu326("DistanceDial")
                if not vu336 then
                    return
                end
                local v337 = Instance.new("ScreenGui")
                v337.Name = "DistanceDisplay"
                v337.ResetOnSpawn = false
                v337.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
                local vu338 = Instance.new("TextLabel")
                vu338.Size = UDim2.new(0, 200, 0, 30)
                vu338.Position = UDim2.new(0, 0, 0.5, - 20)
                vu338.BackgroundTransparency = 1
                vu338.TextColor3 = Color3.new(1, 1, 1)
                vu338.TextScaled = true
                vu338.Font = Enum.Font.SourceSans
                vu338.Text = vu336.Text
                vu338.Parent = v337
                vu336:GetPropertyChangedSignal("Text"):Connect(function()
                    vu338.Text = vu336.Text
                end)
            else
                local v339 = game.Players.LocalPlayer:FindFirstChild("PlayerGui")
                local v340 = v339 and v339:FindFirstChild("DistanceDisplay")
                if v340 then
                    v340:Destroy()
                end
            end
        end
    })
    local vu341 = false
    local vu342 = nil
    v73:CreateToggle({
        Name = "Show Fuel",
        Default = false,
        Callback = function(p343)
            vu341 = p343
            if p343 then
                local vu344 = vu326("Fuel")
                if not vu344 then
                    return
                end
                local v345 = Instance.new("ScreenGui")
                v345.Name = "FuelDisplay"
                v345.ResetOnSpawn = false
                v345.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
                local vu346 = Instance.new("TextLabel")
                vu346.Size = UDim2.new(0, 200, 0, 30)
                vu346.Position = UDim2.new(0, 0, 0.6, - 20)
                vu346.BackgroundTransparency = 1
                vu346.TextColor3 = Color3.new(1, 1, 1)
                vu346.TextScaled = true
                vu346.Font = Enum.Font.SourceSans
                vu346.Text = "Patched ): "
                vu346.Parent = v345
                vu342 = task.spawn(function()
                    while vu341 and vu344.Parent do
                        local v347, v348 = pcall(function()
                            return vu344.Value
                        end)
                        if v347 then
                            vu346.Text = v348 .. " %"
                        end
                        task.wait(1)
                    end
                end)
            else
                vu341 = false
                if vu342 then
                    task.cancel(vu342)
                    vu342 = nil
                end
                local v349 = game.Players.LocalPlayer:FindFirstChild("PlayerGui")
                local v350 = v349 and v349:FindFirstChild("FuelDisplay")
                if v350 then
                    v350:Destroy()
                end
            end
        end
    })
    local v351 = v15:CreateTab("Visual", 139093054959009)
    local vu352 = game:GetService("Players")
    local vu353 = vu352.LocalPlayer
    local vu354 = game:GetService("Workspace")
    local function vu363()
        local v355, v356, v357 = ipairs({
            "default",
            "armored",
            "gold",
            "cattle"
        })
        while true do
            local v358
            v357, v358 = v355(v356, v357)
            if v357 == nil then
                break
            end
            local v359, v360, v361 = ipairs(workspace:GetChildren())
            while true do
                local v362
                v361, v362 = v359(v360, v361)
                if v361 == nil then
                    break
                end
                if typeof(v362.Name) == "string" and v362.Name:lower() == v358 then
                    return v362
                end
            end
        end
        return nil
    end
    local vu364 = false
    local vu365 = false
    local vu366 = false
    local vu367 = false
    local vu368 = false
    local vu369 = false
    local vu370 = nil
    local vu371 = {}
    local function vu381()
        local v372, v373, v374 = pairs(vu371)
        while true do
            local v375
            v374, v375 = v372(v373, v374)
            if v374 == nil then
                break
            end
            if v375 and typeof(v375) == "table" then
                if v375.Highlight and v375.Highlight:IsA("Highlight") then
                    v375.Highlight:Destroy()
                end
                if v375.Billboard and v375.Billboard:IsA("BillboardGui") then
                    v375.Billboard:Destroy()
                end
            end
        end
        vu371 = {}
        if vu370 then
            vu370:Destroy()
            vu370 = nil
        end
        local v376 = vu354
        local v377, v378, v379 = pairs(v376:GetDescendants())
        while true do
            local v380
            v379, v380 = v377(v378, v379)
            if v379 == nil then
                break
            end
            if v380:IsA("BillboardGui") and v380.Name == "ESP_BuildingLabel" then
                v380:Destroy()
            end
        end
    end
    local function vu390(p382, p383, p384)
        if not vu371[p382] then
            local v385 = {}
            if p382:IsA("Model") or p382:IsA("BasePart") then
                local v386
                if p382:IsA("Model") then
                    v386 = p382.PrimaryPart or p382
                else
                    v386 = p382
                end
                if not v386 and p382:IsA("Model") then
                    v386 = p382:FindFirstChildWhichIsA("BasePart")
                    p382.PrimaryPart = v386
                end
                if v386 then
                    local v387 = Instance.new("Highlight")
                    v387.Name = "ESP_Highlight"
                    v387.Adornee = p382
                    v387.OutlineColor = p383
                    v387.OutlineTransparency = 0
                    v387.FillTransparency = 1
                    v387.Parent = p382
                    v385.Highlight = v387
                    if p384 then
                        local v388 = Instance.new("BillboardGui")
                        v388.Name = "ESP_Label"
                        v388.Adornee = v386
                        v388.Size = UDim2.new(0, 100, 0, 20)
                        v388.StudsOffset = Vector3.new(0, 2, 0)
                        v388.AlwaysOnTop = true
                        v388.Parent = p382
                        local v389 = Instance.new("TextLabel")
                        v389.Size = UDim2.new(1, 0, 1, 0)
                        v389.BackgroundTransparency = 1
                        v389.Text = p384
                        v389.TextColor3 = p383
                        v389.TextStrokeTransparency = 0
                        v389.TextScaled = true
                        v389.Font = Enum.Font.GothamBold
                        v389.Parent = v388
                        v385.Billboard = v388
                    end
                    vu371[p382] = v385
                end
            end
        end
    end
    local function vu395()
        local v391 = vu354:FindFirstChild("Train")
        if v391 then
            local v392 = v391:FindFirstChild("PrimaryPart") or v391:FindFirstChildWhichIsA("BasePart")
            if v392 then
                local v393 = Instance.new("BillboardGui")
                v393.Name = "ESP_Highlight"
                v393.Adornee = v392
                v393.Size = UDim2.new(0, 200, 0, 50)
                v393.StudsOffset = Vector3.new(0, 5, 0)
                v393.AlwaysOnTop = true
                v393.Parent = v391
                local v394 = Instance.new("TextLabel")
                v394.Size = UDim2.new(1, 0, 1, 0)
                v394.BackgroundTransparency = 1
                v394.Text = "Train"
                v394.TextColor3 = Color3.fromRGB(255, 0, 0)
                v394.TextStrokeTransparency = 0
                v394.TextScaled = true
                v394.Font = Enum.Font.GothamBlack
                v394.Parent = v393
                vu370 = v393
            end
        else
            return
        end
    end
    local function vu400(p396, p397)
        local v398 = Instance.new("BillboardGui")
        v398.Name = "ESP_BuildingLabel"
        v398.Adornee = p396
        v398.Size = UDim2.new(0, 100, 0, 20)
        v398.StudsOffset = Vector3.new(0, 3, 0)
        v398.AlwaysOnTop = true
        v398.Parent = p396
        local v399 = Instance.new("TextLabel")
        v399.Size = UDim2.new(1, 0, 1, 0)
        v399.BackgroundTransparency = 1
        v399.Text = p397:gsub("(%l)(%u)", "%1 %2"):gsub("^%l", string.upper):gsub("([a-z])([A-Z])", "%1 %2")
        v399.TextColor3 = Color3.fromRGB(0, 255, 0)
        v399.TextStrokeTransparency = 0
        v399.TextScaled = true
        v399.Font = Enum.Font.GothamBold
        v399.Parent = v398
    end
    local function vu435()
        if vu364 then
            local v401 = vu352
            local v402, v403, v404 = pairs(v401:GetPlayers())
            while true do
                local v405
                v404, v405 = v402(v403, v404)
                if v404 == nil then
                    break
                end
                if v405 ~= vu353 and v405.Character then
                    vu390(v405.Character, Color3.fromRGB(0, 255, 0))
                end
            end
        end
        local v406 = vu365 and vu363()
        if v406 then
            vu390(v406, Color3.fromRGB(255, 0, 0), "Train")
            if not vu370 then
                vu395()
            end
        end
        if vu366 then
            local v407 = vu354
            local v408, v409, v410 = pairs(v407:GetDescendants())
            while true do
                local v411
                v410, v411 = v408(v409, v410)
                if v410 == nil then
                    break
                end
                if v411:IsA("Model") and v411:FindFirstChild("Humanoid") and not vu352:GetPlayerFromCharacter(v411) then
                    vu390(v411, Color3.fromRGB(255, 0, 0))
                end
            end
        end
        local v412 = vu367 and vu354:FindFirstChild("RuntimeItems")
        if v412 then
            local v413, v414, v415 = pairs(v412:GetChildren())
            while true do
                local v416
                v415, v416 = v413(v414, v415)
                if v415 == nil then
                    break
                end
                if v416:IsA("Model") or v416:IsA("BasePart") then
                    vu390(v416, Color3.fromRGB(255, 255, 0))
                end
            end
        end
        local v417 = vu368 and vu354:FindFirstChild("Ore")
        if v417 then
            local v418, v419, v420 = pairs(v417:GetChildren())
            while true do
                local v421
                v420, v421 = v418(v419, v420)
                if v420 == nil then
                    break
                end
                if v421:IsA("Model") or v421:IsA("BasePart") then
                    local v422 = tostring(v421.Name):gsub("Ore", "")
                    vu390(v421, Color3.fromRGB(0, 0, 255), v422)
                end
            end
        end
        if vu369 then
            local v423 = {}
            local v424 = vu354
            local v425 = vu354
            __set_list(v423, 1, {
                vu354:FindFirstChild("RandomBuildings"),
                v424:FindFirstChild("Towns"),
                v425:FindFirstChild("TownBuildings")
            })
            local v426, v427, v428 = pairs(v423)
            while true do
                local v429
                v428, v429 = v426(v427, v428)
                if v428 == nil then
                    break
                end
                if v429 then
                    local v430, v431, v432 = pairs(v429:GetChildren())
                    while true do
                        local v433
                        v432, v433 = v430(v431, v432)
                        if v432 == nil then
                            break
                        end
                        local v434 = v433:IsA("Model")
                        if v434 then
                            v434 = v433.PrimaryPart or v433:FindFirstChildWhichIsA("BasePart")
                        end
                        if v434 then
                            vu400(v434, v433.Name)
                        end
                    end
                end
            end
        end
    end
    local v436 = vu352
    local v437, v438, v439 = pairs(vu352.GetPlayers(v436))
    local vu440 = vu367
    local vu441 = vu369
    local vu442 = vu368
    local vu443 = vu366
    local vu444 = vu365
    local vu445 = vu352
    local vu446 = vu364
    while true do
        local v447
        v439, v447 = v437(v438, v439)
        if v439 == nil then
            break
        end
        v447.CharacterAdded:Connect(function()
            if vu446 then
                task.wait(1)
                vu435()
            end
        end)
    end
    vu445.PlayerAdded:Connect(function(p448)
        p448.CharacterAdded:Connect(function()
            if vu446 then
                task.wait(1)
                vu435()
            end
        end)
    end)
    vu445.PlayerRemoving:Connect(function()
        vu435()
    end)
    task.spawn(function()
        while true do
            if vu446 or (vu444 or (vu443 or (vu440 or (vu442 or vu441)))) then
                vu435()
            end
            task.wait(1)
        end
    end)
    v351:CreateToggle({
        Name = "Player ESP",
        Default = false,
        Callback = function(p449)
            vu446 = p449
            if not p449 then
                vu381()
            end
        end
    })
    v351:CreateToggle({
        Name = "Train Notice",
        Default = false,
        Callback = function(p450)
            vu444 = p450
            if not p450 then
                vu381()
            end
        end
    })
    v351:CreateToggle({
        Name = "Mob ESP",
        Default = false,
        Callback = function(p451)
            vu443 = p451
            if not p451 then
                vu381()
            end
        end
    })
    v351:CreateToggle({
        Name = "Item ESP",
        Default = false,
        Callback = function(p452)
            vu440 = p452
            if not p452 then
                vu381()
            end
        end
    })
    v351:CreateToggle({
        Name = "Ore Notice",
        Default = false,
        Callback = function(p453)
            vu442 = p453
            if not p453 then
                vu381()
            end
        end
    })
    v351:CreateToggle({
        Name = "Building Notice",
        Default = false,
        Callback = function(p454)
            vu441 = p454
            if not p454 then
                vu381()
            end
        end
    })
    v351:CreateButton({
        Name = "Set Day",
        Callback = function()
            game.Lighting.ClockTime = 14
        end
    })
    v351:CreateButton({
        Name = "Set Night",
        Callback = function()
            game.Lighting.ClockTime = 0
        end
    })
    local vu455 = false
    local vu456 = game.Lighting.Brightness
    v351:CreateToggle({
        Name = "Full Brightness",
        Default = false,
        Callback = function(p457)
            vu455 = p457
            if vu455 then
                game.Lighting.Brightness = 10
                game.Lighting.FogEnd = 1000000
            else
                game.Lighting.Brightness = vu456
                game.Lighting.FogEnd = 1000
            end
        end
    })
    v351:CreateButton({
        Name = "Unlock Cam",
        Callback = function()
            game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic
        end
    })
    v351:CreateButton({
        Name = "Remove Fog",
        Callback = function()
            local v458 = game:GetService("Lighting")
            v458.FogEnd = math.huge
            v458.FogStart = math.huge
            v458.FogColor = Color3.fromRGB(255, 255, 255)
            if v458:FindFirstChild("GrayCloudSky") then
                v458.GrayCloudSky.Parent = nil
            end
            if v458:FindFirstChildOfClass("Sky") then
                local v459 = v458:FindFirstChildOfClass("Sky")
                v459.SunAngularSize = 0
                v459.CelestialBodiesShown = false
            end
            v458.GlobalShadows = false
            v458.ShadowSoftness = 0
        end
    })
    local v460 = v15:CreateTab("Other", 113608433727038)
    v460:CreateLabel("Weld Keybind: Z")
    local vu461 = game:GetService("UserInputService")
    v460:CreateButton({
        Name = "Load Weld Script",
        Callback = function()
            _G.key = _G.key or "Z"
            vu18()
            vu22("https://raw.githubusercontent.com/hbjrev/airweld.github.io/refs/heads/main/RINGTA.lua")
            local v462 = game:GetService("CoreGui")
            repeat
                task.wait()
            until v462:FindFirstChild("KeySystemUI")
            local vu463 = v462.KeySystemUI
            local vu464 = vu463.Frame.Frame.TextBox
            local vu465 = game:GetService("VirtualInputManager")
            local vu466 = game:GetService("Players").LocalPlayer
            task.spawn(function()
                while vu463 and vu463.Parent do
                    pcall(function()
                        vu463.Enabled = false
                        vu463.Visible = false
                    end)
                    task.wait(0.2)
                end
            end)
            local function vu467()
                vu464:CaptureFocus()
                vu464.Text = "ringta"
                task.wait(0.2)
                vu465:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                vu465:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
            end
            task.spawn(function()
                while not vu466:FindFirstChild("PlayerGui"):FindFirstChild("SideButtonGui") do
                    vu467()
                    task.wait(3)
                end
                local vu468 = vu466.PlayerGui.SideButtonGui.WeldButton
                vu468.BackgroundColor3 = Color3.new(0, 0, 0)
                vu468.BackgroundTransparency = 0.5
                local vu469 = false
                local vu470 = nil
                local vu471 = nil
                vu468.InputBegan:Connect(function(p472)
                    if p472.UserInputType == Enum.UserInputType.MouseButton1 or p472.UserInputType == Enum.UserInputType.Touch then
                        vu469 = true
                        vu470 = p472.Position
                        vu471 = vu468.Position
                    end
                end)
                vu468.InputEnded:Connect(function(p473)
                    if p473.UserInputType == Enum.UserInputType.MouseButton1 or p473.UserInputType == Enum.UserInputType.Touch then
                        vu469 = false
                    end
                end)
                vu461.InputChanged:Connect(function(p474)
                    if vu469 then
                        local v475 = p474.Position - vu470
                        vu468.Position = UDim2.new(vu471.X.Scale, vu471.X.Offset + v475.X, vu471.Y.Scale, vu471.Y.Offset + v475.Y)
                    end
                end)
                local function v479(p476)
                    local v477 = {
                        Color3.fromRGB(255, 0, 0),
                        Color3.fromRGB(255, 165, 0),
                        Color3.fromRGB(255, 255, 0),
                        Color3.fromRGB(0, 255, 0),
                        Color3.fromRGB(0, 0, 255),
                        Color3.fromRGB(75, 0, 130),
                        Color3.fromRGB(238, 130, 238)
                    }
                    local v478 = 1
                    while true do
                        p476.TextColor3 = v477[v478]
                        v478 = v478 % # v477 + 1
                        wait(1)
                    end
                end
                if vu461.KeyboardEnabled then
                    vu468.Visible = false
                    wait(1)
                    if vu461.TouchEnabled then
                        vu468.Visible = true
                    end
                end
                v479(vu468)
            end)
        end
    })
    v460:CreateButton({
        Name = "Load Infinite Yield",
        Callback = function()
            LoadIY()
        end
    })
    local v480 = v15:CreateTab("Gun Mods", 112427816062342)
    local vu481 = false
    local vu482 = false
    local vu483 = {}
    local vu484 = {}
    local function vu498(p485, p486)
        local v487 = game:GetService("Players").LocalPlayer
        local v488 = workspace:WaitForChild(v487.Name)
        local v489, v490, v491 = pairs(v487.Backpack:GetChildren())
        while true do
            local v492
            v491, v492 = v489(v490, v491)
            if v491 == nil then
                break
            end
            if v492:FindFirstChild("WeaponConfiguration") then
                local v493 = v492:FindFirstChild("WeaponConfiguration")
                if v493:FindFirstChild(p486 and "ReloadDuration" or "FireDelay") then
                    local v494 = v493[p486 and "ReloadDuration" or "FireDelay"]
                    if p486 then
                        if p485 then
                            if not vu483[v492] then
                                vu483[v492] = v494.Value
                            end
                            v494.Value = 0
                        elseif vu483[v492] then
                            v494.Value = vu483[v492]
                        end
                    elseif p485 then
                        if not vu484[v492] then
                            vu484[v492] = v494.Value
                        end
                        v494.Value = 0
                    elseif vu484[v492] then
                        v494.Value = vu484[v492]
                    end
                end
            end
        end
        local v495 = v488:FindFirstChildOfClass("Tool")
        if v495 and v495:FindFirstChild("WeaponConfiguration") then
            local v496 = v495:FindFirstChild("WeaponConfiguration")
            if v496:FindFirstChild(p486 and "ReloadDuration" or "FireDelay") then
                local v497 = v496[p486 and "ReloadDuration" or "FireDelay"]
                if p486 then
                    if p485 then
                        if not vu483[v495] then
                            vu483[v495] = v497.Value
                        end
                        v497.Value = 0
                    elseif vu483[v495] then
                        v497.Value = vu483[v495]
                    end
                elseif p485 then
                    if not vu484[v495] then
                        vu484[v495] = v497.Value
                    end
                    v497.Value = 0
                elseif vu484[v495] then
                    v497.Value = vu484[v495]
                end
            end
        end
    end
    v480:CreateToggle({
        Name = "Fast Reload",
        Default = false,
        Callback = function(p499)
            vu481 = p499
            vu498(p499, true)
        end
    })
    v480:CreateToggle({
        Name = "Fast Shooting",
        Default = false,
        Callback = function(p500)
            vu482 = p500
            vu498(p500, false)
        end
    })
    local v501 = v15:CreateTab("Teleport", 106188302698811)
    v501:CreateButton({
        Name = "TP To End",
        Callback = function()
            vu61:Set(true)
            local vu502 = game:GetService("Players").LocalPlayer
            local vu503 = vu502.Character or vu502.CharacterAdded:Wait()
            local v504 = vu503:WaitForChild("Humanoid")
            local v505 = vu503:WaitForChild("HumanoidRootPart")
            local v506 = v505.Position
            local v507 = Vector3.new(- 425, 36, - 49043)
            local vu508 = v505:Clone()
            vu508.Name = "HumanoidRootPart"
            vu508.Parent = vu503
            local vu509 = v505
            vu509.Anchored = true
            vu509.CanCollide = false
            vu509.Transparency = 1
            vu509.Parent = workspace
            vu509.CFrame = CFrame.new(0, - 5000, 0)
            local v510, v511, v512 = pairs(vu503:GetDescendants())
            while true do
                local v513, v514 = v510(v511, v512)
                if v513 == nil then
                    break
                end
                v512 = v513
                if v514:IsA("Motor6D") and v514.Part0 == vu509 then
                    v514.Part0 = vu508
                end
            end
            vu503:MoveTo(v506 + Vector3.new(0, 1000000, 0))
            task.wait(0.2)
            vu503:MoveTo(v507)
            local vu515 = nil
            vu515 = v504.Seated:Connect(function(p516)
                if p516 then
                    local v517 = vu503
                    local v518, v519, v520 = pairs(v517:GetDescendants())
                    while true do
                        local v521
                        v520, v521 = v518(v519, v520)
                        if v520 == nil then
                            break
                        end
                        if v521:IsA("Motor6D") and v521.Part0 == vu508 then
                            v521.Part0 = vu509
                        end
                    end
                    vu509.Parent = vu503
                    vu509.Anchored = false
                    vu509.CanCollide = true
                    vu509.Transparency = 0
                    vu508:Destroy()
                    vu515:Disconnect()
                end
            end)
            local function vu525()
                local v522 = vu502
                local v523 = Instance.new("ScreenGui", v522:WaitForChild("PlayerGui"))
                v523.Name = "NPCWarning"
                local v524 = Instance.new("TextLabel", v523)
                v524.Size = UDim2.new(0.6, 0, 0.1, 0)
                v524.Position = UDim2.new(0.2, 0, 0.45, 0)
                v524.Text = "Kill the NPC"
                v524.TextColor3 = Color3.new(1, 0, 0)
                v524.BackgroundTransparency = 1
                v524.Font = Enum.Font.SourceSansBold
                v524.TextScaled = true
                return v523
            end
            task.spawn(function()
                task.wait(1)
                local v526 = workspace:WaitForChild("Baseplates"):WaitForChild("FinalBasePlate"):WaitForChild("OutlawBase"):WaitForChild("Sentries"):WaitForChild("EnemyTurret"):WaitForChild("TurretOutlaw")
                local v527 = workspace.Baseplates.FinalBasePlate.OutlawBase.Sentries.EnemyTurret.MaximGun.VehicleSeat
                if v526 and v526:FindFirstChildOfClass("Humanoid") then
                    local v528 = v526:FindFirstChildOfClass("Humanoid")
                    local v529 = vu525()
                    repeat
                        task.wait(0.5)
                    until v528.Health <= 0
                    v529:Destroy()
                    task.wait(0.5)
                    vu503:MoveTo(v527.Position + Vector3.new(0, 5, 0))
                end
            end)
            local vu530 = 600
            local vu531 = tick() - workspace.DistributedGameTime
            local v532 = game:GetService("Players").LocalPlayer
            local v533 = Instance.new("ScreenGui", v532:WaitForChild("PlayerGui"))
            v533.Name = "CooldownTimer"
            local vu534 = Instance.new("TextLabel", v533)
            vu534.Size = UDim2.new(0, 200, 0, 30)
            vu534.Position = UDim2.new(1, - 210, 0, 10)
            vu534.BackgroundTransparency = 0.5
            vu534.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            vu534.TextColor3 = Color3.new(1, 1, 1)
            vu534.Font = Enum.Font.SourceSansBold
            vu534.TextScaled = true
            task.spawn(function()
                while true do
                    local v535 = tick() - vu531
                    local v536 = math.max(0, vu530 - v535)
                    local v537 = math.floor(v536 / 60)
                    local v538 = math.floor(v536 % 60)
                    if v536 <= 0 then
                        break
                    end
                    vu534.Text = string.format("%02d:%02d", v537, v538)
                    task.wait(1)
                end
                vu534.Text = "Ready"
            end)
            local v539 = Instance.new("ScreenGui", v532:WaitForChild("PlayerGui"))
            v539.Name = "NPCLockToggle"
            local v540 = Instance.new("Frame", v539)
            v540.Size = UDim2.new(0, 120, 0, 40)
            v540.Position = UDim2.new(0, 10, 0, 100)
            v540.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
            v540.Active = true
            v540.Draggable = true
            local vu541 = Instance.new("TextButton", v540)
            vu541.Size = UDim2.new(1, 0, 1, 0)
            vu541.Text = "NPC Lock: OFF"
            vu541.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
            vu541.TextColor3 = Color3.new(1, 1, 1)
            vu541.Font = Enum.Font.SourceSansBold
            vu541.TextScaled = true
            local vu542 = false
            vu541.MouseButton1Click:Connect(function()
                vu542 = not vu542
                if vu542 then
                    vu541.Text = "NPC Lock: ON"
                    vu541.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
                    vu149:Set(true)
                else
                    vu541.Text = "NPC Lock: OFF"
                    vu541.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
                    vu149:Set(false)
                end
            end)
        end
    })
    v501:CreateButton({
        Name = "TP To Tesla",
        Callback = function()
            vu18()
            vu22("https://raw.githubusercontent.com/ringtaa/tptotesla.github.io/refs/heads/main/Tptotesla.lua")
        end
    })
    v501:CreateButton({
        Name = "TP To Castle",
        Callback = function()
            vu18()
            vu22("https://raw.githubusercontent.com/ringtaa/castletpfast.github.io/refs/heads/main/FASTCASTLE.lua")
        end
    })
    v501:CreateButton({
        Name = "TP To Fort",
        Callback = function()
            vu18()
            vu22("https://raw.githubusercontent.com/ringtaa/Tpfort.github.io/refs/heads/main/Tpfort.lua")
        end
    })
    v501:CreateButton({
        Name = "TP To Stearling",
        Callback = function()
            vu18()
            vu22("https://raw.githubusercontent.com/ringtaa/Tptostearling.github.io/refs/heads/main/Stearlingtown.lua")
        end
    })
    v501:CreateButton({
        Name = "TP To Train",
        Callback = function()
            local v543 = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            local v544, v545, v546 = ipairs(game:GetDescendants())
            while true do
                local v547
                v546, v547 = v544(v545, v546)
                if v546 == nil then
                    break
                end
                if v547:IsA("Model") and v547.Name == "ConductorSeat" then
                    local v548 = v547:FindFirstChildWhichIsA("VehicleSeat", true)
                    if v548 then
                        v543:MoveTo(v548.Position)
                        break
                    end
                end
            end
        end
    })
    local v549 = v15:CreateTab("Troll", 122590707949226)
    v549:CreateButton({
        Name = "Kill Mobs (Buggy)",
        Callback = function()
            local v550, v551, v552 = ipairs(workspace:GetDescendants())
            while true do
                local v553
                v552, v553 = v550(v551, v552)
                if v552 == nil then
                    break
                end
                if v553:IsA("Model") then
                    local vu554 = v553:FindFirstChildOfClass("Humanoid")
                    if vu554 and vu554.Health > 0 and not (vu445:GetPlayerFromCharacter(v553) or vu554:FindFirstChild("__BeingKilled")) then
                        local vu555 = Instance.new("BoolValue")
                        vu555.Name = "__BeingKilled"
                        vu555.Parent = vu554
                        task.spawn(function()
                            while vu554.Health > 0 do
                                vu554:TakeDamage(5)
                                task.wait(0.05)
                            end
                            if vu555.Parent then
                                vu555:Destroy()
                            end
                        end)
                    end
                end
            end
        end
    })
    local vu556 = false
    local function vu565(p557)
        if p557:IsA("Model") and p557:FindFirstChild("Humanoid") and not game:GetService("Players"):GetPlayerFromCharacter(p557) then
            local v558 = p557:FindFirstChild("Humanoid")
            local v559 = p557:FindFirstChild("HumanoidRootPart")
            v558.WalkSpeed = 0
            v558.JumpPower = 0
            v558.AutoRotate = false
            if v559 then
                v559.Anchored = true
            end
            local v560 = v558:FindFirstChildOfClass("Animator")
            if v560 then
                local v561, v562, v563 = ipairs(v560:GetPlayingAnimationTracks())
                while true do
                    local v564
                    v563, v564 = v561(v562, v563)
                    if v563 == nil then
                        break
                    end
                    v564:Stop()
                end
            end
        end
    end
    local function vu569(p566)
        if p566:IsA("Model") and p566:FindFirstChild("Humanoid") and not game:GetService("Players"):GetPlayerFromCharacter(p566) then
            local v567 = p566:FindFirstChild("Humanoid")
            local v568 = p566:FindFirstChild("HumanoidRootPart")
            v567.WalkSpeed = 16
            v567.JumpPower = 50
            v567.AutoRotate = true
            if v568 then
                v568.Anchored = false
            end
        end
    end
    local function vu571(p570)
        if p570:IsA("Model") and (p570:FindFirstChild("Humanoid") and p570:FindFirstChild("Humanoid").Health <= 0) then
            vu569(p570)
        end
    end
    workspace.DescendantAdded:Connect(function(p572)
        if vu556 and p572:IsA("Model") then
            task.wait(0.1)
            vu565(p572)
            vu571(p572)
        end
    end)
    v549:CreateToggle({
        Name = "Freeze Mob",
        Default = false,
        Callback = function(p573)
            vu556 = p573
            local v574, v575, v576 = pairs(workspace:GetDescendants())
            while true do
                local v577
                v576, v577 = v574(v575, v576)
                if v576 == nil then
                    break
                end
                if v577:IsA("Model") and v577:FindFirstChild("Humanoid") and not game:GetService("Players"):GetPlayerFromCharacter(v577) then
                    if vu556 then
                        vu565(v577)
                    else
                        vu569(v577)
                    end
                end
            end
        end
    })
    v549:CreateButton({
        Name = "Fling Mobs ( BETA )",
        Callback = function()
            local vu578 = game:GetService("Players")
            local _ = vu578.LocalPlayer;
            (function()
                local v579, v580, v581 = pairs(workspace:GetDescendants())
                local v582 = 1000
                local v583 = 2
                local vu584 = - 300
                while true do
                    local vu585
                    v581, vu585 = v579(v580, v581)
                    if v581 == nil then
                        break
                    end
                    local v586 = vu585:FindFirstAncestorOfClass("Model")
                    if v586 and v586:FindFirstChild("Humanoid") and (not vu578:GetPlayerFromCharacter(v586) and (vu585:IsA("BasePart") and not vu585.Anchored)) then
                        local v587, v588, v589 = ipairs(vu585:GetChildren())
                        while true do
                            local v590
                            v589, v590 = v587(v588, v589)
                            if v589 == nil then
                                break
                            end
                            if v590:IsA("BodyMover") then
                                v590:Destroy()
                            end
                        end
                        local vu591 = Instance.new("BodyPosition")
                        vu591.MaxForce = Vector3.new(1000000, 1000000, 1000000)
                        vu591.Position = vu585.Position + Vector3.new(0, v582, 0)
                        vu591.P = 20000
                        vu591.D = 1000
                        vu591.Parent = vu585
                        task.delay(v583, function()
                            if vu591 and vu591.Parent then
                                vu591:Destroy()
                            end
                            local vu592 = Instance.new("BodyVelocity")
                            vu592.Velocity = Vector3.new(0, vu584, 0)
                            vu592.MaxForce = Vector3.new(1000000, 1000000, 1000000)
                            vu592.P = 1250
                            vu592.Parent = vu585
                            task.delay(5, function()
                                if vu592 and vu592.Parent then
                                    vu592:Destroy()
                                end
                            end)
                        end)
                    end
                end
            end)()
        end
    })
    v15:CreateTab("Premium", 116173860475054):CreateButton({
        Name = "Load Key System",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/zmwtf1/DBCheat/refs/heads/main/KeySys.lua",true))()
        end
    })
    v15:CreateTab("Info", 113608433727038):CreateButton({
        Name = "Show Credits",
        Callback = function()
            Credits()
        end
    })
else
    game.Players.LocalPlayer:Kick("Incorrect Game")
end