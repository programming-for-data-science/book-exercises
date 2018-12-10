# Exercise 1
In this exercise you'll practice using git to clone and edit repositories, as will be required for later exercises.

1. If you haven't already, configure your name and email address for your GitHub account using the terminal.

	```bash
	# enter your full name (without the dashes)
	git config --global user.name "your-full-name"

	# enter your email address (the one associated with your GitHub account)
	git config --global user.email "your-email-address"
	```

2. If you haven't created your own version of this repository on GitHub (e.g., by forking it, or because it was created using GitHub Classroom), fork this repository to your own GitHub account by clicking the `fork` button on the GitHub interface.

	```bash
	#  Click the `fork` button to fork it to your account
	```

3. Using the terminal, clone **your version** of the repository to your machine (make sure you're in the desired directory on your terminal).

	```bash
	# Enter a desired directory
	cd ~/Documents

	# Get the URL by clicking the "Clone or Download" button on GitHub, then clicking the clipboard icon

	# Clone the repository
	git clone https://github.com/YOUR-USER-NAME/chapter-03-exercises.git  # if you are just practicing this chapter
    git clone https://github.com/YOUR-USER-NAME/book-exercises.git # if you are working on the repo with all exercises

	```

4. On your machine, open up this file (`exercise-1/README.md`) in a text editor of your choice.

	```bash
	# Open up the file
	```

5. In the `README.md` file, below these instructions, add an ordered list of what you ate for breakfast today.

	```markdown
	1. Coffee
	2. Milk
	3. Cheerios
	```

6. Using your terminal, add and commit the changes you've made to your repository

	```bash
	# Make sure that you're in the cloned repository
	pwd
	cd chapter-03-exercises # if you're working in the `book-exercises` repo, use `cd book-exercises`

	# Add changes from all files in the repository
	git add .

	# Commit changes making sure to include a descriptive message
	git commit -m "Add breakfast items"
	```

7. Push changes up to GitHub, and view them in your web browser. Make sure you are looking at the repository under _your_ account!

	```bash
	# Push changes
	git push origin master
	```

---

What I had for breakfast:

1. Coffee
2. Milk
3. Cheerios