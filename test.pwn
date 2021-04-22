#include <a_samp>
#include "classes.inc"

main() {}

new Class_CJ;
new Class_Army;

public OnGameModeInit() {

    // Create a class
    Class_CJ = AddClass(0, 1.00, 2.00, 3.00, 4.00);
    Class_Army = AddClass(287, 0.00, 0.00, 0.00, 0.00);

    // Set class data
    SetClassInterior(Class_CJ, 1);
    SetClassWorld(Class_CJ, 1);
    SetClassTeam(Class_CJ, NO_TEAM);
    SetClassPosition(Class_CJ, 5.00, 6.00, 5.00, 6.00);
    SetClassWeapon(Class_CJ, 31, 500);
    SetClassWeapon(Class_CJ, 29, 200);

    // Retrieve & print class data
    print("------------ CJ Class ------------");
    printf("- Interior:\t%i", GetClassInterior(Class_CJ));
    printf("- World:\t%i", GetClassInterior(Class_CJ));
    printf("- Team:\t\t%i", GetClassTeam(Class_CJ));

    new Float: x, Float: y, Float: z, Float: a;
    GetClassPosition(Class_CJ, x, y, z, a);
    printf("- Position:\t%0.3f,%0.3f,%0.3f,%0.3f", x, y, z, a);

    new weapons[MAX_CLASS_WEAPONS], ammo[MAX_CLASS_WEAPONS], i;
    GetClassWeapons(Class_CJ, weapons, ammo, .count = MAX_CLASS_WEAPONS);
    while(i < MAX_CLASS_WEAPONS && weapons[i] != 0) {
        printf("- Weapon %i:\t%i [Ammo: %i]", i+1, weapons[i], ammo[i]);
        i++;
    }

    print("----------------------------------");
    return 1;
}

public OnGameModeExit() {

    // Cleanup classes
    DeleteClass(Class_CJ);
    DeleteClass(Class_Army);
    return 1;
}

public OnPlayerSpawn(playerid) {

    // Retrieve player class ID
    if(GetPlayerClassID(playerid) == Class_CJ) {
        SendClientMessage(playerid, 0x00FF00FF, "You spawned as CJ!");
    }
    return 1;
}

public OnPlayerCommandText(playerid, cmdtext[]) {

    // Force-change player class on next spawn
    if(!strcmp(cmdtext, "/ihatecj", true)) {
        SetPlayerClassID(playerid, Class_Army);
        return 1;
    }
    return 0;
}