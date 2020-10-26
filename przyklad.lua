local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
	print('Logged in as '.. client.user.username)
end)
-- nie usuwać tego na górze!
-- normalna wiadomość
client:on('messageCreate', function(message)
	if message.content == '!ping' then
		message.channel:send('pong!')
	end
end)
--embed
client:on("messageCreate", function(message)
    local content = message.content
    local author = message.author
    if content == ",embed" then
        message:reply {
            embed = {

                
                title = "co chcesz",
                description = "opis czego chcesz",
                author = {
                    name = author.username,
                    icon_url = author.avatarURL
                },
                fields = { -- array of fields    
                {
                        name = "co chcesz",
                        value = "co chcesz",
                        inline = true
                    },
                    {
                        name = "co chcesz",
                        value = "co chcesz",
                        inline = false
                    }
                },
                footer = {
                    text = "tu też co chcesz"
                },
                color = 0xB8FF00 -- hex color code
            }
        }
    end
end)
-- status 
client:on('ready', function()
    print('Logged in as '.. client.user.username)
        client:setGame("co chcesz")
		
end)
-- TEGO NA DOLE NIE USUWAJ!!!!!111!!!11
client:run('Bot ID TWOJEGO BOTA')