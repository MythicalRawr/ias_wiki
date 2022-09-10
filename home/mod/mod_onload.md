## ![](images/shared.png "SHARED")![](images/event.png "EVENT") MOD:onLoad

```lua
void MOD:onLoad()
```

> Global event called **ONCE** by the game to pre-cache resources for loading

Ex:

```lua
function MOD:onLoad()
	resources:loadSound("content/sounds/ball.ogg")
	resources:loadSound("content/sounds/singusasong.ogg")

	resources:loadModel("@/content/models/entities/player.obj")
end
```
