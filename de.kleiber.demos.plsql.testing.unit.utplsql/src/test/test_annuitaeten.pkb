CREATE OR REPLACE PACKAGE BODY test_annuitaeten AS

    PROCEDURE normale_nutzung
        IS
    BEGIN
        ut.expect(annuitaeten.get_annuitaet(
            250000,
            0.05,
            10
        ) ).to_equal(32376.14);
    END;

END;
/
