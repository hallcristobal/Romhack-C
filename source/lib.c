#define link_health ((unsigned char *)0x803B8109)

void game_loop() {
    *link_health = 8;
}