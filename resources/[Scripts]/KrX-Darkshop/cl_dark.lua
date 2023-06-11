ESX = nil


Citizen.CreateThread(function()
    while ESX == nil do
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	Citizen.Wait(0)
    end
end)

local DarkShop = {

    Base = { Title = "~g~Achats Illégaux" },
    Data = { currentMenu = "~b~developped by LILGAR" },
    Events = {

        onSelected = function(self, _, btn, CMenu, menuData, currentButton, currentSlt, result)
              if btn.name == "Chalumeau" then
                    TriggerServerEvent('KrXDarkShop:buy', 40, "blowtorch", "Chalumeau")
              elseif btn.name == "Piratage" then
                    TriggerServerEvent('KrXDarkShop:buy', 5000, "rasperry", "Piratage")
              elseif btn.name == "Graine de Weed" then
                    TriggerServerEvent('KrXSDarkShop:buy', 10000, "blowtorch", "Graine de Weed")
              elseif btn.name == "Gilet par Balle Type - 1" then
                    TriggerServerEvent('KrXDarkShop:buy', 1550, "bulletproof", "Gilet par Balle Type - 1")
              elseif btn.name == "C4" then
                    TriggerServerEvent('KrXDarkShop:buy', 7000, "c4_bank", "C4")
              elseif btn.name == "Gilet par Balle Type - 3" then
                    TriggerServerEvent('KrXDarkShop:buy', 2150, "bullet3", "Gilet par Balle Type - 3")
              elseif btn.name == "Combinaison Hazmat Noir" then
                    TriggerServerEvent('KrXDarkShop:buy', 1150, "hazmat1", "Combinaison Hazmat Noir")




              end
        end,
    },

    Menu = {
        ["~b~developped by LILGAR"] = {
            b = {
                {name = "Chalumeau", ask = "~r~10000$", askX = true},
                {name = "Piratage", ask = "~r~5000$", askX = true},
                {name = "C4", ask = "~r~7000$", askX = true},

            }
        },
    }
}
                 
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if Vdist2(GetEntityCoords(PlayerPedId(), false), -111.26, -7.44,  70.52) < 1.2 then
            ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour intéragir avec le ~b~Vendeur Illégal")
            if IsControlJustPressed(1,51) then 
                CreateMenu(DarkShop)
            end
        end
    end
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("ig_lestercrest")

    while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
    end

    ped = CreatePed("PED_TYPE_APPLE", "ig_lestercrest", -111.26, -7.44, 69.52, 204.31333, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
end)