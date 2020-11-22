-- ################################################################################
-- #                  Copyright 2014-2018 Novaquark SAS                           #
-- ################################################################################

-- ********************************************************************************
-- ********************************** DATABASE ************************************
-- ********************************************************************************

database = {}

--- Returns all info about a given player, identified by its id
-- @param id the player Id
-- @return player structure
function database.getPlayer(id)
    local player = {}
    player.id = id
    player.name = DUSystem.getPlayerName(id)
    player.worldPos = DUSystem.getPlayerWorldPos(id)
    return player
end

--- Returns all info about a given construct, identified by its id and seen from a radar
-- @param radar the radar object
-- @param id the construct Id
-- @return construct structure
function database.getConstruct(radar, id)
    local construct = {}
    construct.id = id
    construct.owner = radar.getConstructOwner(id)
    construct.type = radar.getConstructType(id)
    construct.size = radar.getConstructSize(id)
    construct.worldPos = radar.getConstructWorldPos(id)
    construct.worldSpeed = radar.getConstructWorldSpeed(id)
    construct.worldAcceleration = radar.getConstructWorldAcceleration(id)
    construct.pos = radar.getConstructPos(id)
    construct.speed = radar.getConstructSpeed(id)
    construct.acceleration = radar.getConstructAcceleration(id)
    construct.name = radar.getConstructName(id)
    return construct
end

--- Returns all info about a given element, identified by its id and coupled to a core unit
-- @param core the core unit object
-- @param id the element Id
-- @return construct structure
function database.getElement(core, id)
    local element = {}
    element.id = id
    element.name = core.getElementName(id)
    element.hitPoints = core.getElementHitPoints(id)
    element.maxHitPoints = core.getElementMaxHitPoints(id)
    element.mass = core.getElementMass(id)
    element.type = core.getElementType(id)
    return element
end
