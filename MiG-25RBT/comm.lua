local parameters = {
	fighter = false,
	radar = false,
	ECM = false,
	refueling = false
}

return utils.verifyChunk(utils.loadfileIn("Scripts/UI/RadioCommandDialogPanel/Config/LockOnAirplane.lua", getfenv()))(parameters)