Citizen.CreateThread(function()
	while true do
		SetDiscordAppId(818894667369283624)
		SetDiscordRichPresenceAsset('logo1')
        SetDiscordRichPresenceAssetText('GALAXY V2')
    --    SetDiscordRichPresenceAssetSmall('logo0')
    --    SetDiscordRichPresenceAssetSmallText('discord.gg/dressko')
		SetDiscordRichPresenceAction(0, "Discord", "https://discord.gg/JFq55Z34nP")
		Citizen.Wait(60000)
	end
end)