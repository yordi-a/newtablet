TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

TriggerEvent('es:addCommand', 'tablet', function(source, args, user)
  local xPlayer = ESX.GetPlayerFromId(source)
  local item    = xPlayer.getInventoryItem('tablet').count
  if item > 0 then
  TriggerClientEvent('yordi:tablet', source);
else
     TriggerClientEvent('mythic_notify:client:SendAlert', source, {type = 'error', text = 'Uyarı: Tablete sahip değilsin!'})
end
    
end, {help = "Tableti açmak için kullanılır."})