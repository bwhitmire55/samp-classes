# samp-classes

Add, Edit, and Delete classes dynamically at runtime.

## Installation

Simply install to your project:

```bash
sampctl package install bwhitmire55/samp-classes
```

Include in your code and begin using the library:

```pawn
#include <classes>
```

## Functions

```pawn
/*
PARAMS:
    skin        - skin ID
    Float: x    - spawn x coordinate
    Float: y    - spawn y coordinate
    Float: z    - spawn z coordinate
    Float: a    - spawn facing angle

RETURNS:
    The ID of the added class, otherwise -1
*/
stock AddClass(skin, Float: x, Float: y, Float: z, Float: a);
```

```pawn
/*
PARAMS:
    id          - class ID to delete

RETURNS:
    -
*/
stock DeleteClass(id);
```

```pawn
/*
PARAMS:
    id          - class ID to set
    interior    - interior ID to set

RETURNS:
    -
*/
stock SetClassInterior(id, interior);
```

```pawn
/*
PARAMS:
    id          - class ID to get interior of

RETURNS:
    The set interior ID, otherwise -1
*/
stock GetClassInterior(id);
```

```pawn
/*
PARAMS:
    id          - class ID to set
    world       - virtual world to set

RETURNS:
    -
*/
stock SetClassWorld(id, world);
```

```pawn
/*
PARAMS:
    id          - class ID to get

RETURNS:
    The set world ID, otherwise -1
*/
stock GetClassWorld(id);
```

```pawn
/*
PARAMS:
    id          - class ID to set
    team        - team ID to set

RETURNS:
    -
*/
stock SetClassTeam(id, team);
```

```pawn
/*
PARAMS:
    id          - class ID to get

RETURNS:
    The set team ID, otherwise -1
*/
stock GetClassTeam(id);
```

```pawn
/*
PARAMS:
    id          - class ID to set
    Float: x    - spawn x coordinate to set
    Float: y    - spawn y coordinate to set
    Float: z    - spawn z coordinate to set
    Float: a    - spawn facing angle to set

RETURNS:
    -
*/
SetClassPosition(id, Float: x, Float: y, Float: z, Float: a);
```

```pawn
/*
PARAMS:
    id          - class ID to get
    &Float: x   - var to store x coordinate
    &Float: y   - var to store y coordinate
    &Float: z   - var to store z coordinate
    &Float: a   - var to store facing angle

RETURNS:
    1 on success, otherwise 0
*/
stock GetClassPosition(id, &Float: x, &Float: y, &Float: z, &Float: a);
```

```pawn
/*
PARAMS:
    id          - class ID to set
    weapon      - weapon ID to set
    ammo        - ammo amount to set

RETURNS:
    -
*/
stock SetClassWeapon(id, weapon, ammo);
```

```pawn
/*
PARAMS:
    id                          - class ID to get
    weapon[MAX_CLASS_WEAPONS]   - array to store weapon ids
    ammo[MAX_CLASS_WEAPONS]     - array to store ammo amounts
    count = MAX_CLASS_WEAPONS   - amount of weapon data to retrieve

RETURNS:
    -
*/
stock GetClassWeapons(id, weapon[MAX_CLASS_WEAPONS], ammo[MAX_CLASS_WEAPONS], count = MAX_CLASS_WEAPONS);
```

```pawn
/*
PARAMS:
    playerid    - player ID to set
    classid     - class ID to set

RETURNS:
    -
*/
stock SetPlayerClassID(playerid, classid);
```

```pawn
/*
PARAMS:
    playerid    - player ID to get

RETURNS:
    The set class ID for the specified player (default: -1)
*/
stock GetPlayerClassID(playerid);
```

## Macros

```pawn
// Maximum number of concurrent classes
#if !defined MAX_CLASSES
    #define MAX_CLASSES         (100)
#endif
```

```pawn
// Maximum number of concurrent weapons per class
#if !defined MAX_CLASS_WEAPONS
    #define MAX_CLASS_WEAPONS   (5)
#endif
```

## Testing

To test, simply run the package:

```bash
sampctl package run
```
