RegisterCommand("repair", function(source, args, rawCommand)
    local pPed = GetPlayerPed(-1)
    local pVeh = GetVehiclePedIsIn(pPed, false)
    SetVehicleFixed(pVeh)
    SetVehicleDirtLevel(pVeh, 0.0)
end, false)


RegisterCommand("car", function(source, args, rawCommand)
    RequestModel(GetHashKey(args[1]))
    while not HasModelLoaded(GetHashKey(args[1])) do Wait(1) end

    local veh = CreateVehicle(GetHashKey(args[1]), GetEntityCoords(GetPlayerPed(-1)), GetEntityHeading(GetPlayerPed(-1)), 1, 0)
    TaskWarpPedIntoVehicle(GetPlayerPed(-1), veh, -1)
end, false)