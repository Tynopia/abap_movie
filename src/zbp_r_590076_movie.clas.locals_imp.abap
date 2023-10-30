CLASS lhc_Movie DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Movie RESULT result.

ENDCLASS.

CLASS lhc_Movie IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_Rating DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Rating RESULT result.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR ACTION Rating~delete.

ENDCLASS.

CLASS lhc_Rating IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

ENDCLASS.
