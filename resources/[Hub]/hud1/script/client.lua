local ESX = nil
local isTalking = false

CreateThread(function()
	while ESX == nil do
		TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

--Show GUI
RegisterNetEvent("mine_custumui:show")
AddEventHandler("mine_custumui:show", function(show)
	SendNUIMessage({action = "show", show = show})
end)

--Starter state
RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", function(xPlayer)
	--Cash
	SendNUIMessage({action = "setValue", key = "money", value = ESX.Math.GroupDigits(xPlayer.money) .. " €"})
	
	--Black money
	for indice, valore in pairs(xPlayer.accounts) do
		if valore.name == "black_money" then
			SendNUIMessage({action = "setValue", key = "black", value = ESX.Math.GroupDigits(valore.money) .. " €"})
		end
	end
	
	--Job
	local job = xPlayer.job
	SendNUIMessage({action = "setValue", key = "job", value = job.label .. " - " .. job.grade_label, icon = job.name})
end)

--Voice
CreateThread(function()
	while true do
		Wait(0)
		if isTalking == false then
			if NetworkIsPlayerTalking(PlayerId()) then
				isTalking = true
				SendNUIMessage({action = "setTalking", value = true})
			end
			else if NetworkIsPlayerTalking(PlayerId()) == false then
				isTalking = false
				SendNUIMessage({action = "setTalking", value = false})
			end
		end
	end
end)

--Change volume
RegisterNetEvent("mine_customui:changeVolume")
AddEventHandler("mine_customui:changeVolume", function(volume)
	SendNUIMessage({action = "changeVolume", value = volume})
end)

--Update state
RegisterNetEvent("es:activateMoney")
AddEventHandler("es:activateMoney", function(e)
	SendNUIMessage({action = "setValue", key = "cash", value = ESX.Math.GroupDigits(e) .. " €"})
end)

RegisterNetEvent("esx:setAccountMoney")
AddEventHandler("esx:setAccountMoney", function(account)
	if account.name == "black_money" then
		SendNUIMessage({action = "setValue", key = "black", value = ESX.Math.GroupDigits(account.money) .. " €"})
	end
end)

RegisterNetEvent("esx:setJob")
AddEventHandler("esx:setJob", function(job)
	SendNUIMessage({action = "setValue", key = "job", value = job.label .. " - " .. job.grade_label, icon = job.name})
end)

--Hide on menu
local isPaused = false
CreateThread(function()
	while true do
		Citizen.Wait(1000)
		
		if IsPauseMenuActive() and not isPaused then
			isPaused = true
			TriggerEvent("mine_custumui:show", false)
		elseif not IsPauseMenuActive() and isPaused then
			isPaused = false
			TriggerEvent("mine_custumui:show", true)
		end
	end
end)