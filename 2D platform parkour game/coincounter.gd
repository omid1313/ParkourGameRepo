extends CanvasLayer


var coinscollected = 0


func _ready():
	$coincount.text = "Coins: " + str(coinscollected)


func _on_coin_body_entered(body):
# Increases the coin count and updates the display when a coin is collected.
	coinscollected = coinscollected + 1
	$coincount.text = "Coins: " + str(coinscollected)


