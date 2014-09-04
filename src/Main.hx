package;

import starling.containers.View2D;
import starling.core.Starling;

import openfl.display.StageScaleMode;
import openfl.display.StageAlign;
import openfl.display.Sprite;
import openfl.events.Event;

class Main extends Sprite
{	
	//engine variables
	private var myStarling:Starling;
	private var _view:View2D;

	/**
	 * Constructor
	 */
	public function new ()
	{
		super();
		stage.scaleMode = StageScaleMode.NO_SCALE;
		stage.align = StageAlign.TOP_LEFT;

		//setup the view
		_view = new View2D();
		this.addChild(_view);

		//setup starling
		myStarling = new Starling(Game, stage, null, _view.stage3DProxy.stage3D);
		myStarling.antiAliasing = 1;
		myStarling.start();
		_view.starlingPtr = myStarling;

		//setup the render loop
		_view.setRenderCallback(_onEnterFrame);
	}
	
	/**
	 * render loop
	 */
	private function _onEnterFrame(e:Event):Void
	{
		_view.render();
	}
}
