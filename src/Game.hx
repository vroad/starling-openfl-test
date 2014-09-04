import openfl.Assets;
import starling.display.Image;
import starling.display.Sprite;
import starling.textures.Texture;

class Game extends Sprite
{
	public function new()
	{
		super();
		var bitmapData = Assets.getBitmapData ("assets/textures/atlas.png");
		var texture = Texture.fromBitmapData(bitmapData);

		addChild(new Image(texture));
	}
}