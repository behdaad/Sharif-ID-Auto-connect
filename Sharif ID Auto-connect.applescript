on idle
	set mySSID to do shell script "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ SSID/ {print substr($0, index($0, $2))}'"
	if ((mySSID as string) is equal to "CE_WLAN") then
		tell application "System Events"
			tell current location of network preferences
				set myConnection to the service "Sharif ID"
				if myConnection is not null then
					if current configuration of myConnection is not connected then
						connect myConnection
					end if
				end if
			end tell
			return 120
		end tell
	end if
end idle