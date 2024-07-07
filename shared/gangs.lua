InternalShared = InternalShared or {}

-- For permission information see the README or config of the corresponding gang resource.

InternalShared.Gangs = {
    ['butchers'] = {
        Label = "Butchers",
        BossMenus = {
            vec3(-352.632, 290.571, 98.486)
        },
        Ranks = {
            [1] = {
                Label = "Boss",
                isBoss = true
            }
            [2] = {
                name = "Rank 2",
            },
            [3] = {
                name = "Rank 3",
            },
            [4] = {
                name = "Rank 4",
            },    
        }
    },
}

GlobalState.Shared_Gangs = InternalShared.Gangs

---Export to check if a player has a job related permission. This prevents having to check for a list of each type of job in each resource.
---@param gangName string
---@param rank number
---@param permission string
---@return boolean
exports('HasGangPermission', function(gangName, rank, permission)
    if InternalShared.Gangs[gangName] and InternalShared.Gangs[gangName].Ranks[rank] and InternalShared.Gangs[gangName].Ranks[rank].Permissions then
        for _, perm in pairs(InternalShared.Gangs[gangName].Ranks[rank].Permissions) do
            if perm == permission then
                return true
            end
        end
    end
    return false
end)