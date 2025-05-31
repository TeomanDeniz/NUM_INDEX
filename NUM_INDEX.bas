'******************************************************************************'
' BAS - NUM_INDEX                                #       Maximum Tension       '
'##############################################################################'
'                                                #      -__            __-     '
' Teoman Deniz                                   #  :    :!1!-_    _-!1!:    : '
' maximum-tension.com                            #  ::                      :: '
'                                                #  :!:    : :: : :  :  ::::!: '
' +.....................++.....................+ #   :!:: :!:!1:!:!::1:::!!!:  '
' : C - Maximum Tension :: Create - 2025/05/31 : #   ::!::!!1001010!:!11!!::   '
' :---------------------::---------------------: #   :!1!!11000000000011!!:    '
' : License - MIT       :: Update - 2025/05/31 : #    ::::!!!1!!1!!!1!!!::     '
' +.....................++.....................+ #       ::::!::!:::!::::      '
'******************************************************************************'

FUNCTION NUM_INDEX(NUMBER AS INTEGER, INDEX AS INTEGER) AS INTEGER
	DIM	NUMBER_SIZE AS INTEGER
	DIM	TEMP_NUMBER AS INTEGER
	DIM	POSITION AS INTEGER

	IF (NUMBER < 0) THEN
		NUMBER = -NUMBER
	END IF

	IF (NUMBER = 0) THEN
		IF (INDEX = 0) THEN
			NUM_INDEX = 0
			EXIT FUNCTION
		END IF

		NUM_INDEX = -1
		EXIT FUNCTION
	END IF

	TEMP_NUMBER = NUMBER

	IF (TEMP_NUMBER < 10) THEN
		NUMBER_SIZE = 1
	ELSE
		NUMBER_SIZE = 0

		DO WHILE (TEMP_NUMBER > 0)
			TEMP_NUMBER = INT(TEMP_NUMBER / 10)
			NUMBER_SIZE = NUMBER_SIZE + 1
		LOOP
	END IF

	IF (INDEX >= NUMBER_SIZE) THEN
		NUM_INDEX = -1
		EXIT FUNCTION
	END IF

	POSITION = NUMBER_SIZE - INDEX - 1

	DO WHILE (POSITION > 0)
		NUMBER = INT(NUMBER / 10)
		POSITION = POSITION - 1
	LOOP

	NUM_INDEX = NUMBER MOD 10
END FUNCTION
