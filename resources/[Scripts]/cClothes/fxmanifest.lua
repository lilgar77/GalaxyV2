fx_version 'adamant'
games { 'gta5' }


client_scripts {
  'menu.lua',
  'config.lua',
  "client/*.lua",
}

server_scripts {
  "@mysql-async/lib/MySQL.lua",
  'config.lua',
  "server/*.lua",
}