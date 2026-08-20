_G.inffuel = true

while _G.inffuel do
    task.wait()

    local car = game:GetService("Workspace").Vehicles:FindFirstChild(game:GetService("Players").LocalPlayer.Name .. "'s Vehicle_1")

    if car then
        local Event = game:GetService("ReplicatedStorage").Remotes.FuelSystem.RefuelVehicle

        Event:FireServer(
            0,
            car.MaxFuel.Value - car.Fuel.Value,
            car.CurrentFuelType.Value,
            car:GetAttribute("SimpleName")
        )
    end
end
