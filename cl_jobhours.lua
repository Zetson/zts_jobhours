vRPChours = {}
Tunnel.bindInterface("zts_jobhours",vRPChours)
Proxy.addInterface("zts_jobhours",vRPChours)
vRP = Proxy.getInterface("vRP")
vRPShours = Tunnel.getInterface("zts_jobhours","zts_jobhours")

local function drawText(text, x, y, scale, r, g, b)
	SetTextFont(font)
	SetTextCentre(1)
	SetTextProportional(0)
	SetTextScale(scale, scale)
	SetTextDropShadow(30, 5, 5, 5, 255)
	SetTextEntry("STRING")
	SetTextColour(r, g, b, 255)
	AddTextComponentString(text)
	DrawText(x, y)
end


Citizen.CreateThread(function()
	ticks = 1000
	while true do
		ped = PlayerPedId()


        if #(GetEntityCoords(ped) - vector3(895.32720947266,-179.23951721192,74.700233459472)) <= 3.0 then --  vector3(1087.9495849609,6508.6015625,21.057828903198) indica locatia de unde sa iei job-ul ( schimbi doar coordonatele din ()  )
        	ticks = 1
			DrawMarker(2,895.32720947266,-179.23951721192,74.700233459472-0.5, 0, 0, 0, 0, 0, 0, 0.35, 0.35, 0.35, 25, 154, 209, 165, 0, 0, 0, 1) -- aici dupa numarul 2 sunt coordonatele pentru locatia de la Marker schimbi coordonatele trebuie sa lasi -0.5 acela 
			drawText("APASA ~b~E~w~ PENTRU A TE ANGAJA CA TAXIMETRIST", 0.5, 0.9, 0.4, 255, 255, 255)
			if IsControlJustPressed(1,51) and not IsPedInAnyVehicle(GetPlayerPed(-1), false) then
				vRPShours.verificaOrele({0,"Taximetrist"}) -- Numarul 10 indica orele necesare  // "Taximetrist" indica job-ul pe care trebuie sa il primesca
			end
        end


        if #(GetEntityCoords(ped) - vector3(-229.43702697754,-1377.7781982422,31.258249282836)) <= 3.0 then
        	ticks = 1
			DrawMarker(2,-229.43702697754,-1377.7781982422,31.258249282836-0.5, 0, 0, 0, 0, 0, 0, 0.35, 0.35, 0.35, 25, 154, 209, 165, 0, 0, 0, 1)
			drawText("APASA ~b~E~w~ PENTRU A TE ANGAJA CA MECANIC", 0.5, 0.9, 0.4, 255, 255, 255)
			if IsControlJustPressed(1,51) and not IsPedInAnyVehicle(GetPlayerPed(-1), false) then
				vRPShours.verificaOrele({2,"Mecanic"})
			end

        if #(GetEntityCoords(ped) - vector3(-697.27661132812,-1321.5979003906,5.1019282341004)) <= 3.0 then
        	ticks = 1
			DrawMarker(2,-697.27661132812,-1321.5979003906,5.1019282341004-0.5, 0, 0, 0, 0, 0, 0, 0.35, 0.35, 0.35, 25, 154, 209, 165, 0, 0, 0, 1)
			drawText("APASA ~b~E~w~ PENTRU A TE ANGAJA CA PESCAR", 0.5, 0.9, 0.4, 255, 255, 255)
			if IsControlJustPressed(1,51) and not IsPedInAnyVehicle(GetPlayerPed(-1), false) then
				vRPShours.verificaOrele({4,"Pescar"})
			end
        end

		if #(GetEntityCoords(ped) - vector3(963.98718261718,-1019.6196899414,40.847534179688)) <= 3.0 then
        	ticks = 1
			DrawMarker(2,963.98718261718,-1019.6196899414,40.847534179688-0.5, 0, 0, 0, 0, 0, 0, 0.35, 0.35, 0.35, 25, 154, 209, 165, 0, 0, 0, 1)
			drawText("APASA ~b~E~w~ PENTRU A TE ANGAJA CA FAN CURIER", 0.5, 0.9, 0.4, 255, 255, 255)
			if IsControlJustPressed(1,51) and not IsPedInAnyVehicle(GetPlayerPed(-1), false) then
				vRPShours.verificaOrele({0,"Fan Courier"})
			end
        end

		if #(GetEntityCoords(ped) - vector3(168.99125671386,-1633.648803711,29.29167175293)) <= 3.0 then
        	ticks = 1
			DrawMarker(2,168.99125671386,-1633.648803711,29.29167175293-0.5, 0, 0, 0, 0, 0, 0, 0.35, 0.35, 0.35, 25, 154, 209, 165, 0, 0, 0, 1)
			drawText("APASA ~b~E~w~ PENTRU A TE ANGAJA CA SOCULUI KEBAP", 0.5, 0.9, 0.4, 255, 255, 255)
			if IsControlJustPressed(1,51) and not IsPedInAnyVehicle(GetPlayerPed(-1), false) then
				vRPShours.verificaOrele({10,"Socului Kebap"})
			end
        end

		if #(GetEntityCoords(ped) - vector3(753.4794921875,-3182.4599609375,6.949047088623)) <= 3.0 then
        	ticks = 1
			DrawMarker(2,753.4794921875,-3182.4599609375,6.949047088623-0.5, 0, 0, 0, 0, 0, 0, 0.35, 0.35, 0.35, 25, 154, 209, 165, 0, 0, 0, 1)
			drawText("APASA ~b~E~w~ PENTRU A TE ANGAJA CA TRAFICANT DE DROGURI", 0.5, 0.9, 0.4, 255, 255, 255)
			if IsControlJustPressed(1,51) and not IsPedInAnyVehicle(GetPlayerPed(-1), false) then
				vRPShours.verificaOrele({25,"Traficant de Droguri"})
			end
        end

		if #(GetEntityCoords(ped) - vector3(1741.3951416016,-1613.0944824218,112.68698883054)) <= 3.0 then
        	ticks = 1
			DrawMarker(2,1741.3951416016,-1613.0944824218,112.68698883056-0.5, 0, 0, 0, 0, 0, 0, 0.35, 0.35, 0.35, 25, 154, 209, 165, 0, 0, 0, 1)
			drawText("APASA ~b~E~w~ PENTRU A TE ANGAJA CA TRAFICANT DE ARME", 0.5, 0.9, 0.4, 255, 255, 255)
			if IsControlJustPressed(1,51) and not IsPedInAnyVehicle(GetPlayerPed(-1), false) then
				vRPShours.verificaOrele({25,"Traficant de Arme"})
			end
        end

        ticks = 1000
        Citizen.Wait(ticks)
	end
end)
