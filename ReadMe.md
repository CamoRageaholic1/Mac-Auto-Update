## Create an Auto Update Script for you Mac!

                                                                                                                                     
    ,--.   ,--.                  ,-----.,--.                 ,--.        ,--. ,--.          ,--.          ,--.                 
    |   `.'   | ,--,--.,---.    '  .--./|  ,---. ,---.  ,---.|  |,-.     |  | |  | ,---.  ,-|  | ,--,--.,-'  '-. ,---.  ,---.  
    |  |'.'|  |' ,-.  | .--'    |  |    |  .-.  | .-. :| .--'|     /     |  | |  || .-. |' .-. |' ,-.  |'-.  .-'| .-. :(  .-'  
    |  |   |  |\ '-'  \ `--.    '  '--'\|  | |  \   --.\ `--.|  \  \     '  '-'  '| '-' '\ `-' |\ '-'  |  |  |  \   --..-'  `) 
     `--'   `--' `--`--'`---'     `-----'`--' `--'`----' `---'`--'`--'     `-----' |  |-'  `---'  `--`--'  `--'   `----'`----'  
                                                                                   `--'                                        



1. Enter bash mode in your terminal by typing bash

2. Open Terminal: Open the Terminal application on your Mac.

3. Edit .zshrc File: You'll want to add a function to your .zshrc file. This file is executed every time you open a new Zsh shell. Type nano ~/.zshrc in the Terminal and press Enter to edit this file using the nano text editor.

4. Add the Function: In the nano editor, add the following function to the end of the .zshrc file:



        #!/bin/zsh
        #Mac Check Update Script - Created By David Osisek


        echo "Checking for Homebrew Updates..."
        brew update
        brew upgrade

        # checks for programming languages and other tools if applicable
        # Python packages:
        echo "Checking for outdated Python packages..."
        pip list --outdated
        # add more languages here as needed 

        echo "Remember to check for updates in the Mac App Store."
        echo "Remember to check for updates to third-party applications not managed by $
        echo "Remember to check for any firmware updates in System Preferences."

        echo "Checking for macOS System Updates..."
        softwareupdate -l


6. This function, check_updates, first uses brew update to update Homebrew itself and brew upgrade to upgrade all installed packages, then uses pip list --outdated to check for any programming language updates, 
finally it uses the softwareupdate -l command to list available macOS system updates..

7. Save and Exit: To save the file in nano, press Ctrl + O, then press Enter. To exit nano, press Ctrl + X.

8. Reload .zshrc or Restart Terminal: For the changes to take effect, you can either source the .zshrc file by typing source ~/.zshrc in the Terminal or simply close and reopen the Terminal.

9. Run the Command: Now, you can check for updates by typing ~/check_updates.sh in your Terminal.
