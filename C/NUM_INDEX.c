/******************************************************************************\
# C - NUM_INDEX                                  #       Maximum Tension       #
################################################################################
#                                                #      -__            __-     #
# Teoman Deniz                                   #  :    :!1!-_    _-!1!:    : #
# maximum-tension.com                            #  ::                      :: #
#                                                #  :!:    : :: : :  :  ::::!: #
# +.....................++.....................+ #   :!:: :!:!1:!:!::1:::!!!:  #
# : C - Maximum Tension :: Create - 2025/05/30 : #   ::!::!!1001010!:!11!!::   #
# :---------------------::---------------------: #   :!1!!11000000000011!!:    #
# : License - MIT       :: Update - 2025/05/31 : #    ::::!!!1!!1!!!1!!!::     #
# +.....................++.....................+ #       ::::!::!:::!::::      #
\******************************************************************************/

/* *********************** [v] TI CGT CCS (PUSH) [v] ************************ */
#ifdef __TI_COMPILER_VERSION__
#	pragma diag_push /* TI CGT CCS COMPILER DIRECTIVES */
#	pragma CHECK_MISRA("5.4") /* TAG NAMES SHALL BE A UNIQUE IDENTIFIER */
#	pragma CHECK_MISRA("19.3") /*
#		THE #INCLUDE DIRECTIVE SHALL BE FOLLOWED BY EITHER A <FILENAME> OR
#		"FILENAME" SEQUENCE
#	*/
#endif /* __TI_COMPILER_VERSION__ */
/* *********************** [^] TI CGT CCS (PUSH) [^] ************************ */

/* *************************** [v] MVS LINKER [v] *************************** */
/* **** MVS LINKER DOES NOT SUPPORT EXTERNAL NAMES LARGER THAN 8 BYTES!! **** */
// NOTE: TARGETING IBM MAINFRAME SYSTEMS (Z/OS)
#	ifdef __MVS__
#		pragma map(NUM_INDEX, "NUMINDEX")
#	endif /* __MVS__ */
/* *************************** [^] MVS LINKER [^] *************************** */

/* **************************** [v] INCLUDES [v] **************************** */
#include "LIBCMT/ENVIRONMENTS/KNR_STYLE.h" /*
# define KNR_STYLE
#        */
#include "LIBCMT/ATTRIBUTES/REGPARM.h" /*
# define REGPARM()
#        */
/* **************************** [^] INCLUDES [^] **************************** */

/* *************************** [v] C++ (PUSH) [v] *************************** */
#	ifdef __cplusplus /* C++ */
extern "C" {
#	endif /* __cplusplus */
/* *************************** [^] C++ (PUSH) [^] *************************** */

#ifndef KNR_STYLE /* STANDARD C */
char REGPARM(2)
	NUM_INDEX(register long NUMBER, register unsigned short INDEX)
#else /* K&R */
char REGPARM(2)
	NUM_INDEX(NUMBER, INDEX)
	register long	NUMBER;
	register short	INDEX;
#endif /* !KNR_STYLE */
{
	register unsigned short	NUMBER_SIZE;

	if (NUMBER < (long)0)
		NUMBER = ((~NUMBER) + (long)1);

	if (!NUMBER)
		return (-!!INDEX);

	{
		register long	TEMP_NUMBER;

		TEMP_NUMBER = NUMBER;

		if (TEMP_NUMBER < (long)0)
			TEMP_NUMBER = ((~TEMP_NUMBER) + (long)1);

		if (TEMP_NUMBER < (long)10)
			NUMBER_SIZE = 1;
		else
		{
			NUMBER_SIZE = 0;

			while (TEMP_NUMBER)
			{
				TEMP_NUMBER = TEMP_NUMBER / (long)10;
				++NUMBER_SIZE;
			}
		}
	}

	if (INDEX >= NUMBER_SIZE)
		return (-1);

	{
		register unsigned short	POSITION;

		POSITION = (NUMBER_SIZE - INDEX) - 1;

		while (POSITION > 0)
		{
			NUMBER = NUMBER / (long)10;
			--POSITION;
		}
	}

	return ((char)(NUMBER - (NUMBER / 10) * 10));
}

/* *************************** [v] C++ (POP) [v] **************************** */
#	ifdef __cplusplus /* C++ */
}
#	endif /* __cplusplus */
/* *************************** [^] C++ (POP) [^] **************************** */
