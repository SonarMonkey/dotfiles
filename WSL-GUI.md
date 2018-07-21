# Background
  Recently, I learned that Windows Subsystem for Linux existed. I thought it was cool, but thought it would be even cooler to be able to run GUI applications with it. This would allow me to not have to dual boot or virtualize if I want to use Linux or Windows, which both have their caveats. After some digging around and a few janky solutions, I got it working.

# Notes
  This setup does use paid software (X410) available from the Micrsosft app store. However, it can be achieved with a free program that provides similar functionality, such as MobaXterm. That might require additional work, but is probably possible.

# Instructions

### 1. Install Requisite Software
  To start, install any of the WSL images available from the Microsoft app store. I used Debian, but I'm confident this would work with Ubuntu, and with a little extra work, any of the rest of the images currently available.
  
  Then, I installed X410, which is a program that allows you to run a native X Server on top of windows. As I mentioned earlier, this is paid software, but there are other program such as Cygwin and MobaXterm that also provide the ability to run an X server on Windows.

### 2. Set Up Your WSL Image
  After installing WSL, you'll be prompted to set up a user for the image. After that, using whatever package manager is present in your chosen image, you'll need to install a window manager or DE. For my purposes, I used i3, so that's what this guide will assume. If you choose to use a different environment, all the steps involving configuring i3 will obviously not apply.
  
  First, I installed i3 (with its dependencies and recommended dependencies), Sakura (the terminal I use, thought I should probably switch to something else), feh (to set a wallpaper), ranger (just to have a better file manager through this process), compton (for compositing, not required), chromium (to have once the GUI is up and running), and Rofi (the dmenu replacment I prefer, although dmenu is just fine).
  
  Then, I set my display environment variable, so that the WSL could connect properly to the X410 server, with: `echo "export DISPLAY=127.0.0.1:0.0" >> ~/.bashrc`

### 3. Start and Set Up i3
  After installing everything, open X410 and set it to "full desktop" mode. Then, open your WSL, and start i3 with no options: `i3`. Go through the setup of choosing your mod key, and let it generate the default config.

  At this point, if you're familiar with i3, you can go aead and set it up the way you like. If you do this, I recommend testing each option you add individually. Though most things work as expected, there are a few things, such as i3status and i3blocks, that will break. Alternatively, you can use my configuration files. **Don't use my dotfiles at the moment, they aren't fully updated to work with WSL just yet, I'm working out my own personal setup at the moment.**

  On top of that, you can go ahead and install the GUI apps and such that you prefer. As with your config, test each program. I haven't encountered any full GUI program that breaks completely, but my testing has been fairly limited, and this is not an officially supported solution.

### 4. Boom, Linux on Windows

  It seems blasphemous and ungodly but so far it is working well for me, and the convenience of being able to switch back and forth at will has been amazing. No virtualization layer, no dual booting necessary (although I still am until I really put the WSL solution through its paces), and no other nonsense. I can use the software I need from Windows and the OS I want with Linux.

  One final note, I'm putting this guide up right now for my own use, just to back up my process while it's still recent-ish in my head. I wouldn't recommend following it if you're unfamiliar with any part of the process I've just described. However, if you can use Google, a bash shell, and some common sense, you can work it out.
