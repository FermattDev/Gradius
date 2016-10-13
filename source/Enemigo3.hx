package;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxG;

/**
 * ...
 * @author ...
 */
class Enemigo3 extends FlxSprite
{
	private var movement:Bool = false;
	private var maxAcceleration:Int = 200;

	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		makeGraphic(12, 12);
		FlxG.state.add(this);
		velocity.x = Reg.velocityEnemy3 *-1;
	}
	
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed);
		if (velocity.y > maxAcceleration || velocity.y < -maxAcceleration)
		{
			if (movement)
			{
				movement = false;
			}
			else
			{
				movement = true;
			}
		}
		if (movement)
		{
			velocity.y += Reg.accelerationEnemy3;
		}
		else
		{
			velocity.y -= Reg.accelerationEnemy3;
		}
	}
}