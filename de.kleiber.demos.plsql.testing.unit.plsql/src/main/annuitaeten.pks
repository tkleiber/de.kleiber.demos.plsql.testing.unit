CREATE OR REPLACE PACKAGE annuitaeten AS
    FUNCTION get_annuitaet (
        kreditsumme   IN NUMBER,
        zinssatz      IN NUMBER,
        laufzeit      IN NUMBER
    ) RETURN NUMBER;

END;
/