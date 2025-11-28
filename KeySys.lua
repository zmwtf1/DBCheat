local vu1 = "974"
local vu2 = true
local vu3 = "6cdb061c-8e14-44ab-9e5b-46b53f847a3f"
repeat
    task.wait(1)
until game:IsLoaded() or game.Players.LocalPlayer
local vu4 = false
local vu5 = setclipboard or toclipboard
local vu6 = request or http_request
local vu7 = string.char
local vu8 = tostring
local vu9 = string.sub
local vu10 = os.time
local vu11 = math.random
local vu12 = math.floor
local vu13 = gethwid or function()
    return game:GetService("Players").LocalPlayer.UserId
end
local vu14 = ""
local vu15 = 0
local vu16 = game:GetService("HttpService")
function lEncode(p17)
    return vu16:JSONEncode(p17)
end
function lDecode(p18)
    return vu16:JSONDecode(p18)
end
local function vu28(p19)
    local v20 = tostring(p19)
    local v21 = {}
    for v22 = 1, # v20 do
        table.insert(v21, string.byte(v20, v22))
    end
    local v23, v24, v25 = ipairs(v21)
    local v26 = ""
    while true do
        local v27
        v25, v27 = v23(v24, v25)
        if v25 == nil then
            break
        end
        v26 = v26 .. string.format("%02x", v27)
    end
    return string.sub(v26, 1, 64)
end
local v29 = "https://api.platoboost.com"
local v30 = vu6({
    Url = v29 .. "/public/connectivity",
    Method = "GET"
})
local vu31 = (v30.StatusCode ~= 200 or v30.StatusCode ~= 429) and "https://api.platoboost.net" or v29
function cacheLink()
    if vu15 + 600 >= vu10() then
        return true, vu14
    else
        local v32 = vu6
        local v33 = {
            Url = vu31 .. "/public/start",
            Method = "POST",
            Body = lEncode({
                service = vu1,
                identifier = vu28(vu13())
            }),
            Headers = {
                ["Content-Type"] = "application/json"
            }
        }
        local v34 = v32(v33)
        if v34.StatusCode ~= 200 then
            if v34.StatusCode ~= 429 then
                return false, "Failed to cache link."
            else
                return false, "you are being rate limited, please wait 20 seconds and try again."
            end
        else
            local v35 = lDecode(v34.Body)
            if v35.success ~= true then
                return false, v35.message
            end
            vu14 = v35.data.url
            vu15 = vu10()
            return true, vu14
        end
    end
end
cacheLink()
local vu36 = vu31
local function vu38()
    local v37 = ""
    for _ = 1, 16 do
        v37 = v37 .. vu7(vu12(vu11() * 26) + 97)
    end
    return v37
end
for _ = 1, 5 do
    local v39 = vu38()
    task.wait(0.2)
    if vu38() == v39 then
        error("platoboost nonce error.")
    end
end
local function vu42()
    local v40, v41 = cacheLink()
    if v40 then
        vu5(v41)
    end
end
local function vu51(p43)
    local v44 = vu38()
    local v45 = vu36 .. "/public/redeem/" .. vu8(vu1)
    local v46 = {
        identifier = vu28(vu13()),
        key = p43
    }
    if vu2 then
        v46.nonce = v44
    end
    local v47 = vu6
    local v48 = {
        Url = v45,
        Method = "POST",
        Body = lEncode(v46),
        Headers = {
            ["Content-Type"] = "application/json"
        }
    }
    local v49 = v47(v48)
    if v49.StatusCode ~= 200 then
        if v49.StatusCode ~= 429 then
            return false
        else
            return false
        end
    else
        local v50 = lDecode(v49.Body)
        if v50.success ~= true then
            if vu9(v50.message, 1, 27) ~= "unique constraint violation" then
                return false
            else
                return false
            end
        elseif v50.data.valid ~= true then
            return false
        else
            return not vu2 and true or v50.data.hash == vu28("true" .. "-" .. v44 .. "-" .. vu3)
        end
    end
end
local function vu57(p52)
    if vu4 ~= true then
        vu4 = true
        local v53 = vu38()
        local v54 = vu36 .. "/public/whitelist/" .. vu8(vu1) .. "?identifier=" .. vu28(vu13()) .. "&key=" .. p52
        if vu2 then
            v54 = v54 .. "&nonce=" .. v53
        end
        local v55 = vu6({
            Url = v54,
            Method = "GET"
        })
        vu4 = false
        if v55.StatusCode ~= 200 then
            if v55.StatusCode ~= 429 then
                return false
            else
                return false
            end
        else
            local v56 = lDecode(v55.Body)
            if v56.success ~= true then
                return false
            elseif v56.data.valid ~= true then
                if vu9(p52, 1, 4) ~= "FREE_" then
                    return false
                else
                    return vu51(p52)
                end
            else
                return vu2 and true or true
            end
        end
    else
        return false
    end
end
task.spawn(function()
    local vu58 = Instance.new("ScreenGui")
    local vu59 = Instance.new("Frame")
    local v60 = Instance.new("Frame")
    local v61 = Instance.new("TextButton")
    local v62 = Instance.new("Frame")
    local v63 = Instance.new("TextButton")
    local v64 = Instance.new("TextButton")
    local vu65 = Instance.new("TextBox")
    local v66 = Instance.new("TextLabel")
    local v67 = game:GetService("UserInputService")
    local vu68 = "KingKM"
    local vu69 = vu68 .. "/savedkey"
    local vu70 = {
        HackerKM = true,
        JNXGaming = true
    }
    local function vu72(p71)
        return true
    end
    if isfile(vu69) and vu72((readfile(vu69))) then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Nasrali11448/use-less/refs/heads/main/useless"))()
    else
        vu58.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        vu58.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        vu58.Name = "CoolUI"
        vu59.Name = "Main"
        vu59.Parent = vu58
        vu59.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        vu59.BorderSizePixel = 0
        vu59.Position = UDim2.new(0.3, 0, 0.3, 0)
        vu59.Size = UDim2.new(0, 400, 0, 250)
        vu59.ClipsDescendants = true
        v60.Name = "Topbar"
        v60.Parent = vu59
        v60.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        v60.Size = UDim2.new(1, 0, 0, 30)
        v61.Name = "Exit"
        v61.Parent = v60
        v61.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        v61.Position = UDim2.new(1, - 35, 0.15, 0)
        v61.Size = UDim2.new(0, 25, 0, 20)
        v61.Text = "X"
        v61.TextColor3 = Color3.fromRGB(255, 255, 255)
        v61.Font = Enum.Font.GothamBlack
        v61.TextSize = 14
        v61.MouseButton1Click:Connect(function()
            vu58:Destroy()
        end)
        v62.Name = "Body"
        v62.Parent = vu59
        v62.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        v62.Position = UDim2.new(0, 0, 0, 30)
        v62.Size = UDim2.new(1, 0, 1, - 30)
        v66.Parent = v62
        v66.BackgroundTransparency = 1
        v66.Position = UDim2.new(0.05, 0, 0.05, 0)
        v66.Size = UDim2.new(0.9, 0, 0.15, 0)
        v66.Font = Enum.Font.GothamSemibold
        v66.Text = "Key System"
        v66.TextColor3 = Color3.fromRGB(255, 255, 255)
        v66.TextSize = 18
        vu65.Parent = v62
        vu65.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        vu65.BorderSizePixel = 0
        vu65.Position = UDim2.new(0.05, 0, 0.25, 0)
        vu65.Size = UDim2.new(0.9, 0, 0.15, 0)
        vu65.Font = Enum.Font.Gotham
        vu65.PlaceholderText = "Enter key here..."
        vu65.TextColor3 = Color3.fromRGB(255, 255, 255)
        vu65.TextSize = 14
        vu65.Text = ""
        v63.Name = "GetKey"
        v63.Parent = v62
        v63.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
        v63.BorderSizePixel = 0
        v63.Position = UDim2.new(0.05, 0, 0.5, 0)
        v63.Size = UDim2.new(0.4, 0, 0.2, 0)
        v63.Font = Enum.Font.GothamBold
        v63.Text = "Get Key"
        v63.TextColor3 = Color3.fromRGB(255, 255, 255)
        v63.TextSize = 14
        v63.MouseButton1Click:Connect(function()
            vu42()
        end)
        v64.Name = "CheckKey"
        v64.Parent = v62
        v64.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
        v64.BorderSizePixel = 0
        v64.Position = UDim2.new(0.55, 0, 0.5, 0)
        v64.Size = UDim2.new(0.4, 0, 0.2, 0)
        v64.Font = Enum.Font.GothamBold
        v64.Text = "Verify"
        v64.TextColor3 = Color3.fromRGB(255, 255, 255)
        v64.TextSize = 14
        v64.MouseButton1Click:Connect(function()
            local v73 = vu65.Text
            if vu72(v73) then
                if not isfolder(vu68) then
                    makefolder(vu68)
                end
                writefile(vu69, v73)
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Nasrali11448/use-less/refs/heads/main/useless"))()
                vu58:Destroy()
            else
                local vu74 = vu65.TextColor3
                vu65.Text = "Invalid"
                vu65.TextColor3 = Color3.fromRGB(255, 0, 0)
                task.delay(1, function()
                    vu65.Text = ""
                    vu65.TextColor3 = vu74
                end)
            end
        end)
        local vu75 = nil
        local vu76 = nil
        local vu77 = nil
        local vu78 = nil
        v60.InputBegan:Connect(function(pu79)
            if pu79.UserInputType == Enum.UserInputType.MouseButton1 or pu79.UserInputType == Enum.UserInputType.Touch then
                vu75 = true
                vu77 = pu79.Position
                vu78 = vu59.Position
                pu79.Changed:Connect(function()
                    if pu79.UserInputState == Enum.UserInputState.End then
                        vu75 = false
                    end
                end)
            end
        end)
        v60.InputChanged:Connect(function(p80)
            if p80.UserInputType == Enum.UserInputType.MouseMovement or p80.UserInputType == Enum.UserInputType.Touch then
                vu76 = p80
            end
        end)
        v67.InputChanged:Connect(function(p81)
            if p81 == vu76 and vu75 then
                local v82 = p81.Position - vu77
                vu59.Position = UDim2.new(vu78.X.Scale, vu78.X.Offset + v82.X, vu78.Y.Scale, vu78.Y.Offset + v82.Y)
            end
        end)
    end
end)