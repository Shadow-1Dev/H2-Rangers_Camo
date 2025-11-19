// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "sniper_glint.csv";
    if ( level.script == "boneyard" )
	{
		self.team = "allies";	
	}
	else
	{
		self.team = "axis";
	}
    self.type = "human";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 200;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 1024.0 );
    }

    switch( codescripts\character::get_random_weapon(2) )
    {
        case 0:
            self.weapon = "wa2000_thermal";
            break;
        case 1:
            self.weapon = "wa2000";
            break;
    }

    switch( codescripts\character::get_random_character(3) )
    {
        case 0:
            character\character_us_army_smg_c::main();
            break;
        case 1:
            character\character_us_army_smg::main();
            break;
        case 2:
            character\character_us_army_smg_b::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    character\character_us_army_smg_c::precache();
    character\character_us_army_smg::precache();
    character\character_us_army_smg_b::precache();
    precacheitem( "wa2000_thermal" );
    precacheitem( "wa2000" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
}
