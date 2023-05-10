/* BASIC_IO
 * Author: SANE
 * Creation date: 2023-03-30
 */
MACHINE
    BASIC_IO

OPERATIONS
    bb <-- INTERVAL_READ ( mm , nn ) = PRE
        nn : NAT &
        mm : NAT &
        mm <= nn
    THEN
        bb :: mm .. nn
    END ;

    INT_WRITE ( vv ) = PRE
        vv : NAT
    THEN
        skip
    END ;

    STRING_WRITE ( ss ) = PRE
        ss : STRING
    THEN
        skip
    END
END
