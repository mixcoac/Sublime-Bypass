# **HEY, PLEASE KEEP IN MIND THAT THIS TOOL IS UNDER TESTING AND UNDER DEVELOPMENT BY SOMEBODY WHO DOESN'T EVEN KNOW WHAT GREP DOES, SO IF SOMETHING DOESN'T WORK. OPEN AN ISSUE AND WAIT YEARS FOR IT TO BE FIXED OK THANKS**

---

# Sublime-Bypass
## Remove Sublime Text's Activation process in less than 5 minutes!

---

# What is this?
Sublime-Bypass is a tool that allows you to deactivate the activation system of Sublime Text by modifying the Hex values of the executable.

# Wait is this even legal?!
Probably not, this tool was made for both educational purposes and as a petition for Sublime HQ to change the prices depending on the country (buying power changes between countries fyi) and to give Students and Hobbyists free or discounted versions. So by using it, you're kind of asking them this and also flipping the middle finger in front of their faces.

Remember, Morals over Legality.

# Huh, how do i download and use Sublime-Bypass?
Before downloading and (trying) to use Sublime-Bypass you have to meet some requirements for all of this to work, its all pretty basic stuff and I'll guide you.

Also, this patcher only works on Linux, there are **NO** plans to port this to Windows or MacOS (read the Notes below).

<details>
<summary>Pre-requisites</summary>
<br>
<ul>
	<li>Sublime Text installed (prefferably from the official repos)</li>
	<li><a href="https://github.com/CITIZENSIXTYNINE/Sublime-Bypass/blob/mistress/hosts.md">This piece of text on your /etc/hosts.</a></li>
</details>

Now that you have all of that, lets get into the installation and downloading.


But before you start, you'll (obviously) need a download of Sublime-Bypass on your computer for this to work. Just download Sublime-Bypass from the [Releases](https://github.com/CITIZENSIXTYNINE/Sublime-Bypass/releases) page on this repo and download the latest version (you can also git clone the repo and run the script, its up to you).

After that, just run this command and you're good to go!

```bash
sudo sh sublime-bypass /opt/sublime_text/sublime_text # or replace it with the directory your Sublime is installed
```

Now that you have Sublime Text patched, go to Help > Enter License and type whatever you want in there. Or even copy and paste this license!

```txt
-- BEGIN LICENSE --
Generic Name
Unlimited User License
EA7E-81044230
0C0CD4A8 CAA317D9 CCABD1AC 434C984C
7E4A0B13 77893C3E DD0A5BA1 B2EB721C
4BAAB4C4 9B96437D 14EB743E 7DB55D9C
7CA26EE2 67C3B4EC 29B2C65A 88D90C59
CB6CCBA5 7DE6177B C02C2826 8C9A21B0
6AB1A5B6 20B09EA2 01C979BD 29670B19
92DC6D90 6E365849 4AB84739 5B4C3EA1
048CC1D0 9748ED54 CAC9D585 90CAD815
-- END LICENSE --
```



# Troubleshooting
1. The script did nothing!
- Try to reboot your computer and re-try to run it. If that doesn't work, check if you selected the Sublime executable. If you did all of those and it still didn't work; please open an Issue through Github and explain everything you've done. Also note that Sublime HQ might patch this method at any time, so keep that in mind.

2. My Sublime now says its unregistered after some time!
- Its something that happens often, just go to Help > Enter License and repeat the steps mentioned earlier

3. I have questions about this, can i contact you?
- Sure! just shoot a DM to me on Keybase (@kamikodev) or Email me at <citizensixtynine@protonmail.com>

4. My pizza got cold
- sorry to hear that, microwave each slice for 1 minute and done.

# Credits

Thanks to [leogx9r](https://github.com/leogx9r) for giving an [explanation](https://gist.github.com/JerryLokjianming/71dac05f27f8c96ad1c8941b88030451#gistcomment-3762200) on how these methods work, and overall providing commands and patchers.

# License
Sublime-Bypass is licensed under the zLib license.

If you'd like to learn more about the zLib license, go to <https://opensource.org/licenses/Zlib>.

# Notes
Sublime-Bypass was tested with Sublime Merge and it failed (the shell file says a lot of it heh), I'm currently looking on ways to fix this and have Sublime Merge work too. In the mean time use ~~the way superior~~ Gitkraken or any other Git client (even good ol' Git works!)

There are no plans to port Sublime-Bypass to other operating systems. Mainly due to #LinuxElitism and because I have no way to test those versions, you can make forks and even push some branches if you find a way to port this into those operating systems. And from what I've read, leogx9r (creator/researcher of the method Sublime-Bypass uses) has a working Windows patcher (and apparently there are no plans to release it so... yeah).

Also note that this is a pretty janky job, I don't know how to modify hex values through a terminal (I'm more of a GUI user). Any contribuitions are appreciated.

I also made this fake license with a little easter egg (just remove the whitespaces and parse it through a Base64 Decoder :D), use it if you want... or not you do you.

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

I'd also like to add a pre-patched executable to this Repo but I'm not sure if I'm able to do that and honestly its not that big of a deal, just search up another method if this stops working.