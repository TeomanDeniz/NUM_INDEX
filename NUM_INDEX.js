/******************************************************************************\
# JS - NUM_INDEX                                 #       Maximum Tension       #
################################################################################
#                                                #      -__            __-     #
# Teoman Deniz                                   #  :    :!1!-_    _-!1!:    : #
# maximum-tension.com                            #  ::                      :: #
#                                                #  :!:    : :: : :  :  ::::!: #
# +.....................++.....................+ #   :!:: :!:!1:!:!::1:::!!!:  #
# : C - Maximum Tension :: Create - 2025/05/31 : #   ::!::!!1001010!:!11!!::   #
# :---------------------::---------------------: #   :!1!!11000000000011!!:    #
# : License - MIT       :: Update - 2025/05/31 : #    ::::!!!1!!1!!!1!!!::     #
# +.....................++.....................+ #       ::::!::!:::!::::      #
\******************************************************************************/

function /* NUMBER */
	NUM_INDEX(/* NUMBER */ NUMBER, /* NUMBER */ INDEX)
{
	var	NUMBER_SIZE;

	if (NUMBER < 0)
		NUMBER = -NUMBER;

	if (NUMBER === 0)
	{
		if (INDEX === 0)
			return (0);
		
		return (-1);
	}

	{
		var	TEMP_NUMBER;

		TEMP_NUMBER = NUMBER;

		if (TEMP_NUMBER < 10)
			NUMBER_SIZE = 1;
		else
		{
			NUMBER_SIZE = 0;

			while (TEMP_NUMBER > 0)
			{
				TEMP_NUMBER = Math.floor(TEMP_NUMBER / 10);
				++NUMBER_SIZE;
			}
		}		
	}

	if (INDEX >= NUMBER_SIZE)
		return (-1);

	{
		var	POSITION;

		POSITION = NUMBER_SIZE - INDEX - 1;

		while (POSITION > 0)
		{
			NUMBER = Math.floor(NUMBER / 10);
			--POSITION;
		}
	}

	return (NUMBER % 10);
}
