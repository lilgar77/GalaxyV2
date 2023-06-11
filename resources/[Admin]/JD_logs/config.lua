Config = {}

Config.AllLogs = false											-- Enable/Disable All Logs Channel
Config.postal = true  											-- set to false if you want to disable nerest postal (https://forum.cfx.re/t/release-postal-code-map-minimap-new-improved-v1-2/147458)
Config.username = "Galaxy Protect" 							-- Bot Username
Config.avatar = "https://www.borntobekids.fr/image/381562/1200x900/0/great-pretenders-14435.jpg"				-- Bot Avatar
Config.communtiyName = "Galaxy Protect"					-- Icon top of the embed
Config.communtiyLogo = "https://www.borntobekids.fr/image/381562/1200x900/0/great-pretenders-14435.jpg"		-- Icon top of the embed
Config.FooterText = "♣ Galaxy Protect ♣"						-- Footer text for the embed
Config.FooterIcon = "https://www.borntobekids.fr/image/381562/1200x900/0/great-pretenders-14435.jpg"			-- Footer icon for the embed


Config.weaponLog = true  			-- set to false to disable the shooting weapon logs
Config.InlineFields = true			-- set to false if you don't want the player details next to each other

Config.playerID = true				-- set to false to disable Player ID in the logs
Config.steamID = true				-- set to false to disable Steam ID in the logs
Config.steamURL = true				-- set to false to disable Steam URL in the logs
Config.discordID = true				-- set to false to disable Discord ID in the logs
Config.license = true				-- set to false to disable license in the logs
Config.IP = false					-- set to false to disable IP in the logs

-- Change color of the default embeds here
-- It used Decimal or Hex color codes. They will both work.
Config.BaseColors ={		-- For more info have a look at the docs: https://docs.prefech.com
	chat = "#A1A1A1",				-- Chat Message
	joins = "#3AF241",				-- Player Connecting
	leaving = "#F23A3A",			-- Player Disconnected
	deaths = "#000000",				-- Shooting a weapon
	shooting = "#2E66F2",			-- Player Died
	resources = "#EBEE3F",			-- Resource Stopped/Started	
}


Config.webhooks = {		-- For more info have a look at the docs: https://docs.prefech.com
	all = "https://discord.com/api/webhooks/859111016687992862/UdLDB__vbEtxGMIiiAqj2BfcHz8Jr-pJnJv9bJy0lKyj75iSZgxU9jI0RC2-zntkXxGO",		-- All logs will be send to this channel
	chat = "https://discord.com/api/webhooks/859101298435948544/mGAQ3boCR4YpOsFfvKkxU_wRmu281HUek2fOnpsQE5MUBk0pb_YS7m5zTz-LIKnGwcQa",		-- Chat Message
	joins = "https://discord.com/api/webhooks/859103194696515646/qVuRN1fsDlk2Dzog8c5Dns66Ihj04z_J-VwRIpq9fzPZhLBXYmr_E03TyJ5pEahxK7TV",		-- Player Connecting
	leaving = "https://discord.com/api/webhooks/859103194696515646/qVuRN1fsDlk2Dzog8c5Dns66Ihj04z_J-VwRIpq9fzPZhLBXYmr_E03TyJ5pEahxK7TV",	-- Player Disconnected
	deaths = "https://discord.com/api/webhooks/859111014057639956/rPK4BDITx5Wt4VLU84om34vRBq5L3CznTeVDZ65yVB_QsZquj-0zazMj_4EbqjYixjL4",		-- Shooting a weapon
	shooting = "https://discord.com/api/webhooks/859102411780259901/Mx1omB5nWibsACB-de4nCq7_0xd80qfsKG6g18-qqNNTs0apS1gcqQqpxtQ1XCCJrCN0",	-- Player Died
	resources = "https://discord.com/api/webhooks/859111684656594974/UZ1vfHHf5MFdxT5pB7UHM7Q_piwlyeY4ZCAGk5SUlHrCAR4Pq5HlhcMfD0iPZVlPmi8H",	-- Resource Stopped/Started	
}

Config.TitleIcon = {		-- For more info have a look at the docs: https://docs.prefech.com
	chat = "💬",				-- Chat Message
	joins = "📥",				-- Player Connecting
	leaving = "📤",			-- Player Disconnected
	deaths = "💀",				-- Shooting a weapon
	shooting = "🔫",			-- Player Died
	resources = "🔧",			-- Resource Stopped/Started	
}

Config.Plugins = {
	--["PluginName"] = {color = "#FFFFFF", icon = "🔗", webhook = "DISCORD_WEBHOOK"},
	["Galaxy"] = {color = "#03fc98", icon = "🔗", webhook = "https://discord.com/api/webhooks/859111016687992862/UdLDB__vbEtxGMIiiAqj2BfcHz8Jr-pJnJv9bJy0lKyj75iSZgxU9jI0RC2-zntkXxGO"},
}


 --Debug shizzels :D
Config.debug = false
Config.versionCheck = "1.3.0"
