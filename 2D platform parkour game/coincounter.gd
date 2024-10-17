extends CanvasLayer


var coinscollected = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$coincount.text = "Coins: " + str(coinscollected)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_coin_body_entered(body):
	coinscollected = coinscollected + 1
	$coincount.text = "Coins: " + str(coinscollected)




