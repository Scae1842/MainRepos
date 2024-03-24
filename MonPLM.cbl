
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MonPLM.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  choix_ws PIC A(20).
       01  touche_ws PIC X.
       SCREEN SECTION.
       01  titre.
         02  BLANK SCREEN.
         02  VALUE "BIENVENU DANS MONPLM"              LINE 02 COL 20.
       01  question.
         02  VALUE "Voules-vous voir : "                line 05 COL 10.
         02  Value " Un ECP, appuyez sur 1"             line 06 COL 30.
         02  Value " Un ATBB, appuyez sur 2"            line 07 COL 30.
         02  choix  PIC X TO choix_ws                   line 08 COL 30.

       01  reponse.
         02  PIC A(20) FROM choix_ws LINE 10 COL 10.
         02  VALUE ", vous etes habilites a utiliser ce programmeoihnii"
                                                        LINE 10 COL 31.
       01  attente.
         02  VALUE "Appuyer sur la touche f et validez" LINE 20 COL 20.
         02  VALUE "pour terminer"                      LINE 20 COL 55.
         02  touche PIC X to touche_ws                  LINE 20 COL 70.




       PROCEDURE DIVISION.

       MAIN-PROCEDURE.
           DISPLAY titre.
           DISPLAY question.
           MOVE SPACES TO choix.
           ACCEPT choix.

           DISPLAY reponse.
           MOVE SPACE TO touche.
           ACCEPT attente.
           IF touche_ws = "f" THEN
                    STOP RUN
           END-IF.
      ** add other procedures here
       END PROGRAM MonPLM.
