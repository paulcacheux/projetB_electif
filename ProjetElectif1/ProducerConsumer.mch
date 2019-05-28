/* ProducerConsumer
 * Author: Paul
 * Creation date: 21/05/2019
 */
MACHINE
    ProducerConsumer
SEES
    Parameters
VARIABLES
    current_state
INVARIANT
    current_state : NAT & current_state <= BufferSize
INITIALISATION
    current_state := 0
OPERATIONS
    res <-- readState = BEGIN res := current_state END;
    produces = PRE current_state < BufferSize THEN current_state := current_state + 1 END;
    consumes = PRE current_state > 0 THEN current_state := current_state - 1 END
END
