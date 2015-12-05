# Sharif ID Auto-connect
## Automatically connect Sharif ID when connected to CE_WLAN

A simple AppleScript to automatically connect Sharif ID (and reconnect if disconnetcted) when you are connected to CE_WLAN network. You can easily modify the script if you use different names.

### Instructions:

- Clone the repository or just download the zipped file and extract it.
- Open the `Sharif ID Auto-connect.applescript` with `ScripEditor`.
- Modify the script as you wish, e.g. change the VPN connection name. It assumes your Sharif ID connection name is `Sharif ID` and connects it when you are connected to `CE_WLAN`. You can change both. To change network connection names, open network preferences, select your desired connection, click the gear icon and click `Rename Service...`. See image below.
![Screenshot]
(http://i.imgur.com/6WUB7Ta.png)
- `Export` (`File` > `Export...`) it as `Application` and check `Stay open after run handler`.
- Move the resulting `Sharif ID Auto-connect.app` to `/Applications`.
- If you want this app to run everytime you login to your account, you must add it to `Login Items`: `System Preferences` > `Users & Groups` > `Login Items` > `+`.
- Enjoy.

If you don't want it to have an icon in the Dock, do as following:

- Right click on `Sharif ID Auto-connect.app` and select `Show Package Contents`.
- Open `Info.plist` and add the following

```
<key>LSUIElement</key>
<string>1</string>
```
as a key `<dict>`. It should look like this:

```
  ...
  <key>LSUIElement</key>
  <string>1</string>
</dict>
</plist>
```

Please report any bugs or problems by creating an `Issue`. Also, feel free to share and modify as you wish.

### Roadmap: 

#### Target platforms
- iOS
- Windows
- Linux
- Android
