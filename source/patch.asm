; You can use this to patch the game's code to call into the Rom Hack's code
0x802ff5d4: ; Set ArenaHi to 0x8045
u32 0x3c608045

0x8000645C: ; Override game loop call to Debug with our custom code
bl game_loop