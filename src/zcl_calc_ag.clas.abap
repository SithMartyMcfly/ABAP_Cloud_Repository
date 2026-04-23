CLASS zcl_calc_ag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES
      if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_calc_ag IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA lv_operador TYPE string.
    DATA(lv_num1) = 3.
    DATA(lv_num2) = 2.

    lv_operador = 'divide'.

    IF ( lv_operador = 'suma' ).
      out->write( lv_num1 + lv_num2 ).
    ELSEIF ( lv_operador = 'resta' ).
      out->write( lv_num1 - lv_num2 ).
    ELSEIF ( lv_operador = 'multiplica' ).
      out->write( lv_num1 * lv_num2 ).
    ELSEIF ( lv_operador = 'divide' ).
      TRY.
          out->write( lv_num1 / lv_num2 ).
        CATCH cx_sy_zerodivide.
          out->write( 'No se puede dividir por cero' ).
      ENDTRY.
    ENDIF.


  ENDMETHOD.

ENDCLASS.
