/**
 * Initialization code: new puzzle_dissapearingDame(new FlxPoint(672, 320),new FlxPoint(16, 16));
 * tilesize: 16
 */
package
{
	import org.flixel.*;
	public class puzzle_dissapearingDame extends TopDownLevel
	{
		/** 
		 * FLOORS layer 
		 * tilesheet: celesteFloorTilesheetFin 
		 */ 
		protected static var FLOORS:Array = new Array( 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, 
			0, 0, 0, 0, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, 
			0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 
			8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, 
			8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0
		); 

		/** 
		 * WALLS layer 
		 * tilesheet: celesteTileset 
		 */ 
		protected static var WALLS:Array = new Array( 
			0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 
			0, 0, 0, 20, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 19, 
			0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 
			0, 0, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 
			13, 13, 13, 13, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 0, 19, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 
			13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 30, 0, 27, 13, 24, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 19, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 19, 0, 0
		); 

		/** 
		 * FOREGROUND layer 
		 * tilesheet: celesteTileset 
		 */ 
		protected static var FOREGROUND:Array = new Array( 
			0, 0, 0, 0, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			14, 14, 14, 14, 0, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 0, 18, 14, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
		); 

		protected var decalGroup:FlxGroup;
		protected var objectGroup:FlxGroup;

		public function puzzle_dissapearingDame(levelSize:FlxPoint, blockSize:FlxPoint):void {
			super(levelSize, blockSize, new FlxPoint(280.0,152.0));
			legOutfit = new PlayerOutfit(72*7,55*16,Assets.RANGER2_PANTS,PlayerOutfit.LEGS_OUTFIT,Assets.RANGER2LEGS_SPRITE, OutfitHandler.GUARD_OUTFIT);
			add(legOutfit);
			bodyOutfit = new PlayerOutfit(42*16,49*16,Assets.RANGER2_SHIRT,PlayerOutfit.BODY_OUTFIT,Assets.RANGER2BODY_SPRITE, OutfitHandler.GUARD_OUTFIT);
			add(bodyOutfit);
			headOutfit = new PlayerOutfit(72*16,55*16,Assets.RANGER2_HAT,PlayerOutfit.HEAD_OUTFIT,Assets.RANGER2HEAD_SPRITE, OutfitHandler.GUARD_OUTFIT);
			add(headOutfit);
			//SAFEZONE
			//SAFEZONE
		}

		//SAFEZONE2
		//SAFEZONE2

		override protected function addHideableObjects():void {
			super.addHideableObjects();
			hideableObjects.push(new HideableObject(287.5,71.5,Assets.WalrusArmor));
		}

		override protected function savePointCreation():void{
			super.savePointCreation();
		}

		override protected function createMap():void {
			var tiles:FlxTilemap;

			tiles = new FlxTilemap();
			tiles.loadMap(
				FlxTilemap.arrayToCSV(FLOORS, 21),
				Assets.celesteFloorTilesheetFin, tileSize.x, tileSize.y, 0, 0, 0, uint.MAX_VALUE
			);
			floorGroup.add(tiles);

			tiles = new FlxTilemap();
			tiles.loadMap(
				FlxTilemap.arrayToCSV(WALLS, 21),
				Assets.celesteTileset, tileSize.x, tileSize.y
			);
			wallGroup.add(tiles);

			tiles = new FlxTilemap();
			tiles.loadMap(
				FlxTilemap.arrayToCSV(FOREGROUND, 21),
				Assets.celesteTileset, tileSize.x, tileSize.y
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
			var enemyLight2:Light;
			var waypointList1: Vector.<FlxPoint> = new Vector.<FlxPoint>(); 

			waypointList1.push(new FlxPoint(104.0,88.0)); 

			enemyLight = new Light(Assets.LightImageClass, FlxG.width*3/ 4, FlxG.height/ 4, darkness, 0xFFFFFFFF); add(enemyLight); enemyLight.scale=new FlxPoint(0.75,0.75);

			var enemy1:Enemy = new Enemy(Assets.GUARD_SPRITE, waypointList1, player, enemyLight, 96.0, 80.0); 
			enemies.push(enemy1); 

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
			add(foreGroundGroup);
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
				return new puzzle_dissapearingDame(new FlxPoint(672, 320),new FlxPoint(16, 16));
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