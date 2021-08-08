# Sublime-Bypass
## Remove Sublime Text's Activation process in less than 5 minutes!

---

# What is this?
Sublime-Bypass is a tool that allows you to deactivate the activation system of Sublime Text by modifying the Hex values of the executable (say sublime_text.exe).

# Wait is this even legal?!
Probably not, this tool was made for both educational purposes and as a petition for Sublime HQ to change the prices depending on the country (buying power changes between countries fyi) and to give Students and Hobbyists free or discounted version. So by using it, you're kind of asking them this and also flipping the middle finger into their faces.

Remember, Morals over Legality.

# Huh, how do i download and use Sublime-Bypass?
Before downloading and (trying) to use Sublime-Bypass you have to meet some requirements for all of this to work, its all pretty basic stuff and I'll guide you.

First of all, make sure you're using any Linux distro *(If I'm not wrong this method works for Whimdows but I'm not sure; Sublime-Bypass's technique apparently doesn't work on Machintosh afaik)*, any of them should work. 

Second of all, you need to edit your hosts file and add the following:

```bash
# Sublime-Bypass
127.0.0.1 www.sublimetext.com
127.0.0.1 sublimetext.com
127.0.0.1 sublimehq.com
127.0.0.1 telemetry.sublimehq.com
127.0.0.1 license.sublimehq.com
127.0.0.1 sublimemerge.com
127.0.0.1 45.55.255.55
127.0.0.1 45.55.41.223
0.0.0.0 license.sublimehq.com
0.0.0.0 45.55.255.55
0.0.0.0 45.55.41.223
```

This will make every connection to Sublime HQ fail and therefore, preventing updates and preventing the license in/validation system from working.

Now that you have done this, you now have to download Sublime-Bypass from the [Releases](https://github.com/CITIZENSIXTYNINE/Sublime-Bypass/releases) page on this repo and download the latest version (you can also git clone the repo and run the script, its up to you).

Now just run the following command and then follow the next step (Remember to make a backup of your executable before doing this)

```bash
sudo sh sublime-bypass (where your Sublime Text is installed, normally under /opt/)
```

After this, launch Sublime Text and go to Help > Enter License and type whatever you want in there. If you want to make things more "fancy" paste the following bogus license:

```txt
—– BEGIN LICENSE —–
Richard Matthew Stallman
Unlimited User License (Bypass)
LIBRE-4EVER
SSBhbSBu b3QgZ29u bmEgcGF5 IDk54oKs
IG9uIGEg ZnVja2lu ZyBsaWNl bnNlIGZv
ciBhIHRl eHQgZWRp dG9yLCBz cGVjaWFs
bHkgZm9y IG9uZSB0 aGF0IGNh biBiZSBt
aW1pY2tl ZCB3aXRo IE5lb3Zp bSBhbmQg
YSBmZXcg cGx1Z2lu cy4KCi0g VGhlIHBl
ZXBzIGF0 0IHRoZSB Lcml0dGV yaG91c2U
—— END LICENSE ——
```

And now, Enjoy your Sublime!

# Troubleshooting
1. The script did nothing!
- Try to reboot your computer and re-try to run it. If that doesn't work, check if you selected the Sublime executable. If you did all of those and it still didn't work. I'm sorry to tell you that Sublime HQ patched it and that you'll have to use an older version (latest working version known is v4 build 4113)

2. My Sublime now says its unregistered after some time!
- Its something that happens often, just go to Help > Enter License and type whatever you want there again. As of now I don't know of a fix for it.

3. I have questions about this, can i contact you?
- Sure! just shoot a DM to me on Keybase (check on my profile) or Email me at <citizensixtynine@protonmail.com>

4. My pizza got cold
- sorry to hear that, microwave each slice for 1 minute and done.

# Credits
### Giving credit where credit is due
Thanks to [leogx9r](github.com/leogx9r) for giving an explanation on how this works and overall for giving us the commands and shizz to make the script.

.... that's all, this was a 1 person project. If you contribute to this you might get a spot here or something idfk.

# License
Sublime-Bypass is licensed under the zLib license.

If you'd like to learn more about the zLib license, go to <https://opensource.org/licenses/Zlib>.

# Notes
Sublime-Bypass was tested with Sublime Merge and it failed, I'm currently looking on ways to fix this and have Sublime Merge work too. In the mean time use ~~the way superior~~ Gitkraken or just stick with Git