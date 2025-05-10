fx_version 'cerulean'
game {'gta5'}
lua54 'yes'

author 'kur0_black'
description 'A laundry script in BETA.'
version '0.1'

client_script {'client/*.lua'}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    '@qbx_core/modules/playerdata.lua',
    'server/*.lua'
}

shared_scripts {
    'shared/*.lua',
    '@ox_lib/init.lua',
}

dependencies {
    'oxmysql',
    'ox_inventory',
    'ox_lib',
    '/gameBuild:3095'
}