/* BASIC_IO
 * Author: SANE
 * Creation date: 2023-03-30
 */
MACHINE
    BASIC_IO

OPERATIONS
    printf ( ss ) = PRE
        ss : STRING
    THEN
        skip
    END;
    
    scanf ( ss ) = PRE
        ss : STRING
    THEN
        skip
    END
END