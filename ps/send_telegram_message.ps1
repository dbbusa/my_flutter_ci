# Define your Telegram bot token and chat ID
$token = $env:TELEGRAM_BOT_TOKEN
$chatId = $env:TELEGRAM_CHAT_ID

# Define the message you want to send
$message = "Hello from GitHub Actions!"

# Construct the URL to send the message via Telegram Bot API
$url = "https://api.telegram.org/bot $token/sendMessage?chat_id=$chatId&text=$message"

# Send the HTTP request to the Telegram Bot API
$response = Invoke-RestMethod -Uri $url -Method Get

# Output the response
$response
