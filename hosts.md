# Sublime-Bypass's Host file

You'll have to copy and paste this code block into your /etc/hosts file for Sublime-Bypass to work.

```bash
# Sublime-Bypass
0.0.0.0 sublimetext.com
0.0.0.0 sublimemerge.com
0.0.0.0 sublimehq.com
0.0.0.0 telemetry.sublimehq.com
0.0.0.0 license.sublimehq.com
0.0.0.0 45.55.255.55
0.0.0.0 45.55.41.223
```

This will make every request (updates, telemetry and license checks) to Sublime HQ fail. (Also note that you won't be able to access the Sublime websites)