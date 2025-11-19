// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "";
    self.team = "axis";
    self.type = "human";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 200;
    self.grenadeweapon = "";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "";

    if ( isai( self ) )
    {
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 1024.0 );
    }

    self.weapon = "none";
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
}
