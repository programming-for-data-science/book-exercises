# Exercise 3
Using the text-edit of your choice (e.g., Atom), create a new file called `README.md`. Alternatively, you may clone this repository and edit this file.

In your `README.md` document, provide some information about a terminal command you've learned thus far. In particular, you should include the following:

- A _heading_ with the name of the command;
- An example of how it can be used (formatted as a code block);
- A _list_ of information about the command (i.e., things that it does, or how it can be used).

Note that you can preview this Markdown in Atom to make sure it works correctly.

---

# cp
The `cp` command can be used to _copy_ a file or folder. For example:

```
cp my-photo.png my-photo-copy.png
```

Here's some more information about the `cp` command:

- It can be used to _recursively_ copy a directory with the `-R` option: `cp -R folder-1 folder-2`
- You can print out progress to the terminal using the `-v` command, making it _verbose_): `cp -R -v folder-1 folder-2`