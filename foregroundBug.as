/**
 * Initialization code: new foregroundBug(new FlxPoint(416, 352),new FlxPoint(16, 16));
 * tilesize: 16
 */
package
{
	import org.flixel.*;
	public class foregroundBug extends TopDownLevel
	{
		/** 
		 * FLOORS layer 
		 * tilesheet: celesteBallroomFloorTilesheet5 
		 */ 
		protected static var FLOORS:Array = new Array( 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
		); 

		/** 
		 * WALLS layer 
		 * tilesheet: celesteBallroomWallTilesheet 
		 */ 
		protected static var WALLS:Array = new Array( 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
		); 

		/** 
		 * FOREGROUND layer 
		 * tilesheet: celesteBallroomWallTilesheet 
		 */ 
		protected static var FOREGROUND:Array = new Array( 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
		); 

		protected var decalGroup:FlxGroup;
		protected var objectGroup:FlxGroup;

		public function foregroundBug(levelSize:FlxPoint, blockSize:FlxPoint):void {
			super(levelSize, blockSize, new FlxPoint(104.0,120.0));
			legOutfit = new PlayerOutfit(72*7,55*16,Assets.RANGER2_PANTS,PlayerOutfit.LEGS_OUTFIT,Assets.RANGER2LEGS_SPRITE, OutfitHandler.GUARD_OUTFIT);
			add(legOutfit);
			bodyOutfit = new PlayerOutfit(42*16,49*16,Assets.RANGER2_SHIRT,PlayerOutfit.BODY_OUTFIT,Assets.RANGER2BODY_SPRITE, OutfitHandler.GUARD_OUTFIT);
			add(bodyOutfit);
			headOutfit = new PlayerOutfit(72*16,55*16,Assets.RANGER2_HAT,PlayerOutfit.HEAD_OUTFIT,Assets.RANGER2HEAD_SPRITE, OutfitHandler.GUARD_OUTFIT);
			add(headOutfit);
		}

		override protected function addHideableObjects():void {
			super.addHideableObjects();
		}

		override protected function savePointCreation():void{
			super.savePointCreation();
		}

		override protected function createMap():void {
			var tiles:FlxTilemap;

			tiles = new FlxTilemap();
			tiles.loadMap(
				FlxTilemap.arrayToCSV(FLOORS, 13),
				Assets.FLOORS_TILE, tileSize.x, tileSize.y, 0, 0, 0, uint.MAX_VALUE
			);
			floorGroup.add(tiles);

			tiles = new FlxTilemap();
			tiles.loadMap(
				FlxTilemap.arrayToCSV(WALLS, 13),
				Assets.WALLS_TILE, tileSize.x, tileSize.y
			);
			wallGroup.add(tiles);

			tiles = new FlxTilemap();
			tiles.loadMap(
				FlxTilemap.arrayToCSV(FOREGROUND, 81),
				Assets.WALLS_TILE, tileSize.x, tileSize.y
			);
			foreGroundGroup.add(tiles);
			darkness = new FlxSprite(0,0);
			darkness.makeGraphic(FlxG.width, FlxG.height, 0xff000000);
			darkness.scrollFactor.x = darkness.scrollFactor.y = 0;
			darkness.blend = "multiply";
			playerLight = new Light(Assets.LightImageClass, FlxG.width / 2, FlxG.height / 2, darkness);
			createObjects();
		}

		protected function createObjects():void {
			var sprite:FlxSprite;
			decalGroup = new FlxGroup();
			objectGroup = new FlxGroup();

		}

		override protected function createPlayer():void {
			player = new Player(playerStart.x, playerStart.y);
		}

		override protected function createGUI():void {
			super.createGUI();
		}

		override protected function createWaterDroplets():void {
			var waterDrop:FlxSprite;
			waterDrops = new Vector.<FlxSprite>();

		}

		override protected function addEnemies(): void {

			var enemies:Vector.<Enemy> = new Vector.<Enemy>();
			var enemyLight:Light;
			enemyController = new EnemyController(enemies);
		}

		override protected function addGroups(): void {
			add(floorGroup);
			add(wallGroup);
			var i: int;
			if(hideableObjects!=null)
			{
				for(i =0; i<hideableObjects.length; i++)
				{
					add(hideableObjects[i]);
				}
			}
			if(savePoints!=null)			{
				for(i =0; i<savePoints.length; i++)
				{
					add(savePoints[i]);
				}
			}
			add(objectGroup);
			add(decalGroup);
			if(waterDrops!=null)			{
				for(i = 0; i<waterDrops.length; i++)
				{
					add(waterDrops[i]);
				}
			}
			add(player);
			player.addSprites(this);
			add(enemyController);
			add(playerLight);
			add(darkness);
			add(guiGroup);
			//absolutely necessary for some reason
			debugText = new FlxText(FlxG.camera.scroll.x,FlxG.camera.scroll.y,100);
			debugText.text = "Debug: ";
		}

		override public function draw():void {
			darkness.fill(0xff888888);
			super.draw();
		}

		override public function transferLevel(): TopDownLevel{
			if(super.reloadThisLevel)
			{
				return new foregroundBug(new FlxPoint(416, 352),new FlxPoint(16, 16));
			}
			else
			{
				return null;
			}
		}

		override public function update():void {
			super.update();
		}

		override public function normalGameplay():void {
			super.normalGameplay();
			FlxG.collide(objectGroup, player);
		}
	}
}