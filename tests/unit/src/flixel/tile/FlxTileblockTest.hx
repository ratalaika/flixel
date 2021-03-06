package flixel.tile;

import flixel.tile.FlxTileblock;

class FlxTileblockTest extends FlxTest
{
	var tileblock:FlxTileblock;
	
	@Before
	function before()
	{
		tileblock = new FlxTileblock(0, 0, 100, 100);
		destroyable = tileblock;
	}
	
	@Test // issue 1511
	function testLoadTilesInvalidGraphicPathNoCrash()
	{
		tileblock.loadTiles("assets/invalid");
	}
}