require 'discordrb'
require 'date'

bot = Discordrb::Commands::CommandBot.new(
token: 'ODU1NzU5MTUxNTAyMTk2NzM3.YM3J0A.KLR43T7WoUHQHgHR5ohArKFYl7A',
client_id: 855759151502196737,
prefix:'/',
)


bot.message(content:"hi") do |event|
    event.respond "#{event.user.name} hi :)"
end

def today
    dateToday = Date.today
end

def time
    date = DateTime.now
    return "#{date.hour}:#{date.min}"
end


bot.message do |event|
    mes = event.message.content

    if mes == "a"
        event.respond "#{today}"
        event.respond "#{time}"
        event.respond "I'm alive :)"

    elsif mes == "time" 
        date = DateTime.now
        event.respond "#{date.hour}:#{date.min}"

    elsif mes == "today" 
        dateToday = Date.today
        event.respond "#{dateToday}"
    end
end

bot.run