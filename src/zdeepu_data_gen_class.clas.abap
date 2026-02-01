CLASS ZDEEPU_DATA_GEN_CLASS DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZDEEPU_DATA_GEN_CLASS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    " delete existing entries in the database table
    DELETE FROM ZDEEPU_TRAVEL.
    DELETE FROM ZDEEPU_BOOKING.
    DELETE FROM ZDEEPU_BOOKSUPPL.
    COMMIT WORK.
    " insert travel demo data
    INSERT zdeepu_travel FROM (
        SELECT *
          FROM /dmo/travel_m
      ).
    COMMIT WORK.

    " insert booking demo data
    INSERT zdeepu_booking FROM (
        SELECT *
          FROM   /dmo/booking_m
      ).
    COMMIT WORK.
    INSERT zdeepu_booksuppl FROM (
        SELECT *
          FROM   /dmo/booksuppl_m
      ).
    COMMIT WORK.

    out->write( 'Travel and booking demo data inserted.' ).


  ENDMETHOD.
ENDCLASS.
