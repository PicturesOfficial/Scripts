-- // closed user interface made by xnonamezr \\ --

local TweenService=game:GetService("TweenService")local VirtualInputManager=game:GetService("VirtualInputManager")if game.CoreGui:FindFirstChild("ImageButton")then game.CoreGui:FindFirstChild("ImageButton"):Destroy()end;local ScreenGui=Instance.new("ScreenGui")local ImageButton=Instance.new("ImageButton")local UICorner=Instance.new("UICorner")local ClickSound=Instance.new("Sound")ScreenGui.Name="ImageButton"ScreenGui.Parent=game:GetService("CoreGui")ScreenGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ImageButton.Parent=ScreenGui;ImageButton.BackgroundColor3=Color3.fromRGB(23,23,23)ImageButton.BorderSizePixel=10;ImageButton.BorderColor3=Color3.fromRGB(23,23,23)ImageButton.Position=UDim2.new(0.10,0,0.15,0)ImageButton.Size=UDim2.new(0,50,0,50)ImageButton.Draggable=true;ImageButton.AutoButtonColor=false;ImageButton.Image=""local Logo=Instance.new("ImageLabel")Logo.Parent=ImageButton;Logo.Size=UDim2.new(0,30,0,30)Logo.Position=UDim2.new(0.5,-15,0.5,-15)Logo.BackgroundTransparency=1;Logo.Image="rbxassetid://136262031660297"Logo.ScaleType=Enum.ScaleType.Fit;UICorner.Parent=ImageButton;UICorner.CornerRadius=UDim.new(0,18)ClickSound.Parent=ImageButton;ClickSound.SoundId="rbxassetid://130785805"ClickSound.Volume=1;local function playClickAnimation()local OriginalSize=ImageButton.Size;local TweenInterface=TweenService:Create(ImageButton,TweenInfo.new(0.05),{Size=UDim2.new(0,50,0,50)})local TweenPlayed=TweenService:Create(ImageButton,TweenInfo.new(0.05),{Size=OriginalSize})TweenInterface:Play()TweenInterface.Completed:Connect(function()TweenPlayed:Play()end)end;ImageButton.MouseButton1Down:Connect(function()ClickSound:Play()playClickAnimation()VirtualInputManager:SendKeyEvent(true,Enum.KeyCode.RightControl,false,game)VirtualInputManager:SendKeyEvent(false,Enum.KeyCode.RightControl,false,game)end)
