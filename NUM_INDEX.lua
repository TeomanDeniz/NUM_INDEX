--[[***************************************************************************\
# LUA - NUM_INDEX                                #       Maximum Tension       #
################################################################################
#                                                #      -__            __-     #
# Teoman Deniz                                   #  :    :!1!-_    _-!1!:    : #
# maximum-tension.com                            #  ::                      :: #
#                                                #  :!:    : :: : :  :  ::::!: #
# +.....................++.....................+ #   :!:: :!:!1:!:!::1:::!!!:  #
# : C - Maximum Tension :: Create - 2025/05/30 : #   ::!::!!1001010!:!11!!::   #
# :---------------------::---------------------: #   :!1!!11000000000011!!:    #
# : License - MIT       :: Update - 2025/05/30 : #    ::::!!!1!!1!!!1!!!::     #
# +.....................++.....................+ #       ::::!::!:::!::::      #
\***************************************************************************]]--

-- NUMBER
function
	NUM_INDEX(NUMBER, INDEX) -- NUMBER, NUMBER
	local	NUMBER_SIZE

	INDEX = INDEX - 1

	if (INDEX < 0)
	then
		return (-1)
	end

	if (NUMBER < 0)
	then
		NUMBER = -NUMBER
	end

	if (NUMBER == 0)
	then
		if (INDEX == 0)
		then
			return (0)
		end

		return (-1)
	end

	do
		local	TEMP_NUMBER

		TEMP_NUMBER = NUMBER

		if (TEMP_NUMBER < 10)
		then
			NUMBER_SIZE = 1
		else
			NUMBER_SIZE = 0

			while (TEMP_NUMBER > 0)
			do
				TEMP_NUMBER = math.floor(TEMP_NUMBER / 10)
				NUMBER_SIZE = NUMBER_SIZE + 1
			end
		end
	end

	if (INDEX >= NUMBER_SIZE)
	then
		return (-1)
	end

	do
		local	POSITION

		POSITION = (NUMBER_SIZE - INDEX) - 1

		while (POSITION > 0)
		do
			NUMBER = math.floor(NUMBER / 10)
			POSITION = POSITION - 1
		end
	end

	return (NUMBER % 10)
end