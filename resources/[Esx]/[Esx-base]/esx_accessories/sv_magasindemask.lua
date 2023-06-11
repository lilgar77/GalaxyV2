ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('Neo:lebest')
AddEventHandler('Neo:lebest', function()
 
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeMoney(200) 

end)
 
RegisterServerEvent('Neo:saveMask')
AddEventHandler('Neo:saveMask', function(skin) 

    local xPlayer = ESX.GetPlayerFromId(source)

    TriggerEvent('esx_datastore:getDataStore', 'user_mask', xPlayer.identifier, function(store)

        store.set('hasMask', true) 

        store.set('skin', {
            mask_1 = skin.mask_1,
            mask_2 = skin.mask_2
        }) 

    end)

end) 

ESX.RegisterServerCallback('Neo:checkMoney', function(source, cb)

	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.get('money') >= 200 then
		cb(true)
	else
		cb(false)
	end

end) 