initialization
initialize 
	ZnServer startDefaultOn: 1701.
	ZnServer default delegate: (ZnWebSocketDelegate handler:
  [ :webSocket |
    [ | message |
      message := webSocket readMessage.
      webSocket sendMessage: message ] repeat ]).