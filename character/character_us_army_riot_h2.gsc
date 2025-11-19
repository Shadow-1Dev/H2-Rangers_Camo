// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_riot_udt" );
    self attach( "h2_head_riot_udt", "", 1 );
    self.headmodel = "h2_head_riot_udt";
    self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_riot_udt" );
    precachemodel( "h2_head_riot_udt" );
}
