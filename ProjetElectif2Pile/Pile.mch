/* Pile
 * Author: Paul
 * Creation date: 21/05/2019
 */
MACHINE
    Pile
CONSTANTS
    MaxSize
PROPERTIES
    MaxSize : NATURAL & MaxSize > 0
CONCRETE_VARIABLES
    values, ptr
INVARIANT
    values : (0..(MaxSize-1)) --> NATURAL
    & ptr : 0..MaxSize
INITIALISATION
    values := (0..(MaxSize-1)) * {0}
    || ptr := 0
OPERATIONS
    push(value) = PRE ptr : 0..(MaxSize-1) & value : NATURAL THEN
        values(ptr) := value
        || ptr := ptr + 1
    END;
    value <-- pop = PRE ptr > 0 THEN
        value := values(ptr - 1)
        || ptr := ptr - 1
    END;
    value <-- peek = PRE ptr > 0 THEN
        value := values(ptr - 1)
    END
END
