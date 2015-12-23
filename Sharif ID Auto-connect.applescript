on idle
	set SSID to do shell script "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ SSID/ {print substr($0, index($0, $2))}'"
	if ((SSID as string) is equal to "NEW_CE_WLAN") then
		tell application "System Events"
			tell current location of network preferences
				set VPNConnectionName to the service "Sharif ID"
				if VPNConnectionName is not null then
					if current configuration of VPNConnectionName is not connected then
						connect VPNConnectionName
					end if
				end if
			end tell
			return 5
		end tell
	end if
end idle
