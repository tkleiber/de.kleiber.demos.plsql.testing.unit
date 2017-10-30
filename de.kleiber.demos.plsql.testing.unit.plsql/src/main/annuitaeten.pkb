CREATE OR REPLACE PACKAGE BODY annuitaeten AS

    FUNCTION get_annuitaet (
        kreditsumme   IN NUMBER,
        zinssatz      IN NUMBER,
        laufzeit      IN NUMBER
    ) RETURN NUMBER
        IS
    BEGIN
        RETURN kreditsumme * ( ( ( 1 + zinssatz ) ** laufzeit ) * zinssatz ) / ( ( ( 1 + zinssatz ) ** laufzeit ) - 1 );
    END;

END;
/
