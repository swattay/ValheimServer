New-NetFirewallRule -DisplayName 'IB-TCP-Valheim' -Profile @('Any') -Direction Inbound -Action Allow -Protocol TCP -LocalPort @('2456-2458')
New-NetFirewallRule -DisplayName 'IB-UDP-Valheim' -Profile @('Any') -Direction Inbound -Action Allow -Protocol UDP -LocalPort @('2456-2458')
New-NetFirewallRule -DisplayName 'OB-TCP-Valheim' -Profile @('Any') -Direction Outbound -Action Allow -Protocol TCP -LocalPort @('2456-2458')
New-NetFirewallRule -DisplayName 'OB-UDP-Valheim' -Profile @('Any') -Direction Outbound -Action Allow -Protocol UDP -LocalPort @('2456-2458')