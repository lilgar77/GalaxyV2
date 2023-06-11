ESX								= nil
playerGroup = nil
Config = {}

local incamera = false


Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)





RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)


function destorycam() 	
    RenderScriptCams(false, false, 0, 1, 0)
    DestroyCam(cam, false)
    TriggerServerEvent('barbershop:removeposition')
end



function NeoSaveSkin()
	TriggerEvent('skinchanger:getSkin', function(skin)
		LastSkin = skin
	end)
	TriggerEvent('skinchanger:getSkin', function(skin)
	TriggerServerEvent('Neo:saveMask', skin)  
	end)
end 

function DrawSub(msg, time)
	ClearPrints()
	BeginTextCommandPrint('STRING')
	AddTextComponentSubstringPlayerName(msg)
	EndTextCommandPrint(time, 1)
end 

local ClosesShops = {
    Base = { Header = {"shopui_title_movie_masks", "shopui_title_movie_masks"}, Color = {color_black}, HeaderColor = {255, 255, 255}, Title = "Magasin de Masque", Blocked = true },
    Data = { currentMenu = "Masque disponibles:", "Test" },
    Events = {  
        onSelected = function(self, _, btn, PMenu, menuData, currentButton, currentBtn, currentSlt, result, slide)
			if btn.name == "~g~Payer sont masque" then  

				TaskPedSlideToCoord(PlayerPedId(), -1339.08, -1277.23, 4.88)
				DisplayRadar(true)                                           
				destorycam() 
				PlaySoundFrontend(-1, "CHARACTER_SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0)
				SetEntityInvincible(GetPlayerPed(-1), false)   
				FreezeEntityPosition(GetPlayerPed(-1), false)
				TriggerServerEvent('Neo:lebest')
				NeoSaveSkin()
				TriggerServerEvent('Neo:saveMask') 
				ESX.ShowNotification("~g~Vespucci Masks\n~s~Payment ~g~(+)~s~$200~g~") 
				CloseMenu(true) 
				DrawSub('', 1)
				ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                    TriggerEvent('skinchanger:loadSkin', skin)
				end)

			elseif btn.name == "~r~Fermer le menu" then	
				 
				TaskPedSlideToCoord(PlayerPedId(), -1337.08, -1276.23, 4.88, 105)
			
				DisplayRadar(true) 
				TriggerServerEvent('Neo:lebest')			
				destorycam() 
				PlaySoundFrontend(-1, "CHARACTER_SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0)
				SetEntityInvincible(GetPlayerPed(-1), false)   
				FreezeEntityPosition(GetPlayerPed(-1), false)
				CloseMenu(true)
				DrawSub('', 1)
				ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                    TriggerEvent('skinchanger:loadSkin', skin)
				end)
				
			end
		end,  
		onSlide = function(menuData, currentButton, currentSlt, PMenu)
			
			local currentMenu, ped = menuData.currentMenu, GetPlayerPed(-1)
			if currentMenu == "Masque disponibles:" then  
				if currentSlt ~= 1 then return end
				local currentButton = currentButton.slidenum - 1
                mask1 = currentButton
				TriggerEvent('skinchanger:change', 'mask_1', mask1)
			end
			
			if currentMenu == "couleur masque: " then
				if currentSlt ~= 1 then return end 
				local currentButton = currentButton.slidenum - 1
                mask2 = currentButton
				TriggerEvent('skinchanger:change', 'mask_2', mask2)
			end
		end,
},
	Menu = {
		["Masque disponibles:"] = {
			b = {
				{name = "Masque:", slidemax = 130},
				{name = "Couleur Masque: ", ask = ">", askX = true},
				{name = "~g~Payer sont masque", ask = ">", askX = true},
				{name = "~r~Fermer le menu", ask = ">", askX = true}
			}
		}, 
		["masque: "] = {
			b = {
				{name = "Masque:", slidemax = 130},
			}
		},
		["couleur masque: "] = {
			b = {
				{name = "Couleur Masque:", slidemax = 10},
			}
		},
	}
}

local listClotheshop = {
	{x = -1336.40, y = -1276.50, z = 4.64}
}


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(listClotheshop) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, listClotheshop[k].x, listClotheshop[k].y, listClotheshop[k].z)

            if dist <= 1.2 then
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour accéder ~g~aux magasin de masque.")
				if IsControlJustPressed(1,51) then 	
					PlaySoundFrontend(-1, "CHARACTER_SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0)		
					SetEntityInvincible(GetPlayerPed(-1), true) 
		        	FreezeEntityPosition(GetPlayerPed(-1), true) 									
					SetEntityCoords(GetPlayerPed(-1), -1336.9627, -1277.15600, 4.5238-0.98, 0.0, 0.0, 0.0, 10)
					SetEntityHeading(GetPlayerPed(-1), 80.9283561706543)
					DisplayRadar(false) 
					local cam = {}				
					Citizen.Wait(1)
					cam = CreateCam("DEFAULT_SCRIPTED_Camera", 1)	
                    SetCamCoord(cam, -1338.06, -1277.10, 5.6238, 0.0, 0.0, 200.455696105957, 15.0, false, 0)
                    RenderScriptCams(1000, 1000, 1000, 1000, 1000)
					PointCamAtCoord(cam, -1336.9627, -1277.15600, 5.6238)                  								 				
					DrawSub('~g~Invincible', 999999999)					
                    CreateMenu(ClosesShops) 
				end
            end
        end
    end  
end)
   
local blips = { {title="Magasin de vétements", colour=57, id=362, x = -1336.40, y = -1276.50, z = 4.64} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.8) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
print("^0======================================================================^7") print("^0[^4Author^0] ^7:^0 Péèlo#2482^7") print("^0[^2Download^0] ^7:^0 ^5https://discord.gg/5FKncw5^7") print("^0[^1Issues^0] ^7:^0 ^5https://discord.gg/5FKncw5^7") print("^0======================================================================^7") 