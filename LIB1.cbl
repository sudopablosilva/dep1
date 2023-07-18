      *-----------------------------------------------------------------
      * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
      * SPDX-License-Identifier: Apache-2.0
      *-----------------------------------------------------------------
      * AUTHOR.....: LUIS GUSTAVO DANTAS (AWS).
      *
       IDENTIFICATION DIVISION.
       PROGRAM-ID.      lib1.
      *-----------------------------------------------------------------
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01 ws-libio.
       copy LIB2IO.

       LINKAGE SECTION.
       01  arg.
       copy LIB1IO.

      *-----------------------------------------------------------------
       PROCEDURE DIVISION USING arg.
      *-----------------------------------------------------------------

           MOVE LIB1-I-KEY TO LIB2-I-KEY

           CALL 'LIB2' using ws-libio

           MOVE LIB2-O-ERR      TO LIB1-O-ERR
           MOVE LIB2-O-DATA     TO LIB1-O-DATA

           MOVE ZEROS TO RETURN-CODE

           GOBACK.