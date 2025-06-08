--****************************************************************************--
-- PAS - NUM_INDEX                               #      Maximum Tension       --
--############################################################################--
--                                               #     -__            __-     --
-- Teoman Deniz                                  # :    :!1!-_    _-!1!:    : --
-- maximum-tension.com                           # ::                      :: --
--                                               # :!:    : :: : :  :  ::::!: --
-- +.....................+.....................+ #  :!:: :!:!1:!:!::1:::!!!:  --
-- : C - Maximum Tension : Create - 2025/06/08 : #  ::!::!!1001010!:!11!!::   --
-- :---------------------:---------------------: #  :!1!!11000000000011!!:    --
-- : License - MIT       : Update - 2025/06/08 : #   ::::!!!1!!1!!!1!!!::     --
-- +.....................+.....................+ #      ::::!::!:::!::::      --
--****************************************************************************--

-- program Main;
function
	NUM_INDEX(NUMBER, INDEX: Integer): Integer;
var	NUMBER_SIZE,
	TEMP_NUMBER,
	POSITION: Integer;
begin
	if (NUMBER < 0) then
		NUMBER := -NUMBER;

	if (NUMBER = 0) then
	begin
		if (INDEX = 0) then
			Exit(0)
		else
			Exit(-1);
	end;

	TEMP_NUMBER := NUMBER;

	if (TEMP_NUMBER < 10) then
		NUMBER_SIZE := 1
	else
	begin
		NUMBER_SIZE := 0;

		while (TEMP_NUMBER > 0) do
		begin
			TEMP_NUMBER := TEMP_NUMBER div 10;
			Inc(NUMBER_SIZE);
		end;
	end;

	if (INDEX >= NUMBER_SIZE) then
		Exit(-1);

	POSITION := NUMBER_SIZE - INDEX - 1;

	while (POSITION > 0) do
	begin
		NUMBER := NUMBER div 10;
		Dec(POSITION);
	end;

	Exit(NUMBER mod 10);
end;
-- begin
-- . . .
-- end.
