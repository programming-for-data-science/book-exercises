# Exercise 1
This exercise is a brief review of terminal commands. Like all exercises, you can see the answers in the `complete` branch.

Open up your command-line terminal, and perform the following tasks (no need to fork or download this repository):

```bash
# Navigate to your "Documents" folder
cd ~/Documents

# Create a new folder called "quick-exercise"
mkdir quick-exercise

# Navigate into that folder
cd quick-exercise

# Using the text-edit of your choice (e.g., Atom), create a new (empty) file
# called "constitution.txt" inside the "quick-exercise" folder you made
# No command for this one!

# List the contents of the folder to verify the new file is there
ls

# Search online for the text of the US Constitution (while it's still around!)
# and paste it into the "constitution.txt" file you created. Save your changes in
# the editor.
# No command for this one either!

# Display the contents of the in the terminal
# Hint: use the `less` command so you can easily scroll up and down.
less constitution.txt

# Navigate to the "Desktop" folder for your machine
cd ../../Desktop #path may vary

# Display the contents of the "Documents/quick-exercise/constitution.txt" file in the Terminal
# *without changing directories again!*
cat ../Documents/quick-exercise/constitution.txt
# cat shows entire contents in one dump; less is also and acceptable command

# Bonus: Create 10 files with one single command in your terminal. Then delete them all!
touch myFile{1..10}.txt  # Google to learn more about brace expansion and the "touch" command
rm myFile*.txt # Google to learn about Wildcards
```