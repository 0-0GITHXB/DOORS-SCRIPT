--[[

local sections_ = tabs_entitySpawner:NewSection("")
sections_:NewButton("", " ", function()
	
end)
sections_:NewButton("", "NEXT DOOR", function()
	
end)
sections_:NewButton("", "EVERY DOOR", function()

end)
sections_:NewButton("", "REPEAT", function()

end)

]]

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Doors Scripts by Dec3ptions", "Synapse")


--// ENTITY SPAWNER 
local tabs_entitySpawner = Window:NewTab("Entity Spawner")


--/ HEART MINIGAME
local sections_heartMiniGame = tabs_entitySpawner:NewSection("HeartMinigame")
sections_heartMiniGame:NewButton("HeartBeat Minigame", " ", function()
	firesignal(game.ReplicatedStorage.Bricks.ClutchHeartbeat.OnClientEvent, 2)
end)
sections_heartMiniGame:NewButton("HeartBeat Minigame", "NEXT DOOR", function()
	game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
	firesignal(game.ReplicatedStorage.Bricks.ClutchHeartbeat.OnClientEvent, 2)
end)
sections_heartMiniGame:NewButton("HeartBeat Minigame", "EVERY DOOR", function()
	game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(
		firesignal(game.ReplicatedStorage.Bricks.ClutchHeartbeat.OnClientEvent, 2)
	)
end)
sections_heartMiniGame:NewButton("HeartBeat Minigame", "REPEAT", function()
	for i = 1, 10 do
		firesignal(game.ReplicatedStorage.Bricks.ClutchHeartbeat.OnClientEvent, 2)
	end
end)
--\ HEART MINIGAME


--/ HALT
local sections_halt = tabs_entitySpawner:NewSection("Halt")
sections_halt:NewButton("Halt", " ", function()
	require(game.ReplicatedStorage.ClientModules.EntityModules.Shade).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game), workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)])
end)
sections_halt:NewButton("Halt", "NEXT DOOR", function()
	game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
	require(game.ReplicatedStorage.ClientModules.EntityModules.Shade).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game), workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)])
end)
sections_halt:NewButton("Halt", "EVERY DOOR", function()
	game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
		require(game.ReplicatedStorage.ClientModules.EntityModules.Shade).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game), workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)])
	end)
end)
sections_halt:NewButton("Halt", "REPEAT", function()
	for i = 1, 10 do
		require(game.ReplicatedStorage.ClientModules.EntityModules.Shade).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game), workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)])
	end
end)
--\ HALT


--/ SCREECH
local sections_screech = tabs_entitySpawner:NewSection("Screech")
sections_screech:NewButton("Screech", " ", function()
	require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game), workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
end)
sections_screech:NewButton("Screech", "NEXT DOOR", function()
	game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
	require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game), workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
end)
sections_screech:NewButton("Screech", "EVERY DOOR", function()
	game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
		require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game), workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
	end)
end)
sections_screech:NewButton("Screech", "REPEAT", function()
	for i = 1, 10 do
		require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game), workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
	end
end)
--\ SCREECH

Section:NewButton("Glitch", " ", function()
	require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game), workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
end)
Section:NewButton("Timothy", " ", function()
	local a = game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game
	require(a.RemoteListener.Modules.SpiderJumpscare)(require(a), workspace.CurrentRooms["0"].Assets.Dresser.DrawerContainer, 0.2)
end)


--\\ ENTITY SPAWNER


--// VISUALS
local tabs_visuals = Window:NewTab("Visuals")


--/ FLICKER LIGHTS
local sections_flickerLights = tabs_visuals:NewSection("FlickerLights")
sections_flickerLights:NewButton("FlickerLights", " ", function()
	firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "flickerLights", game.ReplicatedStorage.GameData.LatestRoom.Value, 1)
end)
sections_flickerLights:NewButton("FlickerLights", "NEXT DOOR", function()
	game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
	firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "flickerLights", game.ReplicatedStorage.GameData.LatestRoom.Value, 1)
end)
--\ FLICKER LIGHTS

--/ BREAK LIGHTS
local sections_breakLights = tabs_visuals:NewSection("BreakLights")
sections_breakLights:NewButton("BreakLights", " ", function()
	firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "breakLights", workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value], 0.416, 60)
end)
sections_breakLights:NewButton("BreakLights", "NEXT DOOR", function()
	game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
	firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "breakLights", workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value], 0.416, 60)
end)
--\ BREAK LIGHTS


--/ SEEK EYES
local sections_seekEyes = tabs_visuals:NewSection("SeekEyes")
sections_seekEyes:NewButton("SeekEyes", " ", function()
	require(game:GetService("ReplicatedStorage").ClientModules.EntityModules.Seek).tease(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game), workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], 999)
end)
sections_seekEyes:NewButton("SeekEyes", "NEXT DOOR", function()
	game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
	require(game:GetService("ReplicatedStorage").ClientModules.EntityModules.Seek).tease(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game), workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], 999)
end)
sections_seekEyes:NewButton("SeekEyes", "EVERY DOOR", function()
	game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
		require(game:GetService("ReplicatedStorage").ClientModules.EntityModules.Seek).tease(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game), workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], 999)
	end)
end)
--\ SEEK EYES


--\\ VISUALS
