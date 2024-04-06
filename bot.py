import telebot
import webbrowser

bot = telebot.TeleBot(' )

@bot.message_handler(commands=['site','website'])
def site(message):
  webbrowser.open('https://www.yonex-showroom.com/tokyo-showroom/en/about/index.html')

@bot.message_handler ( commands = ['start'] )
def main(message):
  bot.send_message(message.chat.id,'priviet')

@bot.message_handler ( commands = ['help'] )
def main(message):
  bot.send_message(message.chat.id,'<b>help</b> <em><u>information</u></em>', parse_mode='html')#<u>=under line


@bot.message_handler ()
def info(message):
  if message.text.lower() == 'привет':
    bot.send_message(message.chat.id,f'Привет, {message.from_user.first_name} {message.from_user.last_name}')
  elif message.text.lower() == 'id':
    bot.reply_to (message, f'ID: {message.from_user.id}')
  elif message.text.lower() =='/start':
    @bot.message_handler(commands=['start'])
    def main(message):
      bot.send_message(message.chat.id, 'priviet')
  elif message.text.lower() == '/help':
    @bot.message_handler(commands=['help'])
    def main(message):
      bot.send_message(message.chat.id, '<b>help</b> <em><u>information</u></em>', parse_mode='html')  # <u>=under line


bot.infinity_polling()
