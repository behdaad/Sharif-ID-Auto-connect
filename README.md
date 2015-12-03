# Sharif ID Auto-connect
## Automatically connect Sharif ID when connected to CE_WLAN

A simple AppleScript to automatically connect Sharif ID (and reconnect if disconnetcted) when you are connected to CE_WLAN network. You can easily modify the script if you use different names.

Easiest way to use this app, is to set your Sharif ID VPN connection name `Sharif ID` (no hyphens, exactly like mentioned), clone the repository (or just simply download the zipped file), move `Sharif ID Auto-connect.app` to `/Applications` and enjoy a seamless and streamlined experience. You can also add it to your Login Items via System `Preferences` > `Users & Groups` > `Login Items`. This way, it starts everytime you login to your user account. It lives in the background and never bothers you.

**If you want to edit the script, i.e. make it work with other networks, do as following:**

Modify the script as you wish and export it as `Application`, check the `Stay open after run handler` and move it to `/Applications`.
You can add it to your Login Items via `System Preferences` > `Users & Groups` > `Login Items`.
Moreover, if you don't want it to have an icon in Dock, open the `.app` folder (right-click > Show Package Contents), open `Info.plist` and add the following

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

Please report any bugs or problems by creating an issue. Also, feel free to share and mpdify as you wish.
