## Step 2: Creating Your First Repository

Now that we are familiar with the sample project and informed Git who we are, let's get our game into version control!

### 📖 Theory: The Git Workflow

The Git workflow involves three main areas:

- **Working Directory**: Your project files where you are making changes.
- **Staging Area (Index)**: A preparation area for grouping changes you want to save to history.
- **Repository**: The permanent records of your project's development history.

```mermaid
graph LR
  A[Working Directory] -->|git add| B[Staging Area]
  B -->|git commit| C[Repository]
  C -->|git checkout| A
```

### What are the important Git commands?

Git has many operations, but the there are a few you will use the most for local projects.

- `git init` - Start a new repository to enable versioning.
- `git add` - Group related changes together in the staging area, in preparation to "commit" them to history.
- `git commit` - Save or "commit" the changes in the staging area to the project's history.
  - commit message - A short description of the changes to help keep the history organized.
- `git status` - View the current state of your working directory and staging area.
- `git checkout` - Change your working directory to a different version from the repository history.

> [!TIP]
> Don't undervalue the commit message! A clear, concise, descriptive, and non-generic message will make your project history much easier to understand (and help find those future bugs)!

### ⌨️ Activity 1: Initialize a project repository (using the CLI)

Let's add version control to our game and commit the current version.

1. In the terminal, navigate to the project directory.

   ```bash
   cd /workspaces/stack-overflown
   ```

1. Initialize a new Git repository.

   ```bash
   git init
   ```

1. Check repository status. Notice it says "No commits yet" and the tip to use `git add`.

   ```bash
   git status
   ```

   <img width="500px" src="https://github.com/user-attachments/assets/b15dbbde-057c-4508-a9c5-73681cc1ad19"/>

1. Promote the game files to the staging area. This will create a locked copy, preparing them for committing to the repository history.

   ```bash
   git add src/main.html
   git add src/main.js
   git add src/patterns.js
   git add src/style.css
   ```

   or

   ```bash
   git add src/*
   ```

1. Check the repository status again. Notice that each file is identified as `new file`.

   ```bash
   git status
   ```

   <img width="500px" src="https://github.com/user-attachments/assets/5b58aefa-8180-4082-8962-ce0dbd2d1879"/>

1. Commit the changes to the repository history. Our project history is now started! :octocat:

   ```bash
   git commit -m "Initial commit"
   ```
   
   <img width="500px" src="https://github.com/user-attachments/assets/975f12ba-98d6-4767-bf7a-71ec129f0d70"/>

1. Check repository status. Notice the "working tree clean" which means our current copy perfectly matches the history.

   ```bash
   git status
   ```

   <img width="500px" src="https://github.com/user-attachments/assets/d5339839-6185-45b6-8535-d268840d4ccc"/>

### ⌨️ Activity 2: Work on a file (using VS Code)

Let's also try adding files with our code editor, in this case the documentation for our game.

1. In the file explorer, click the **New File...** icon to start a README file with the following name. Make sure it is inside the `src/stack-overflown/` folder.

   ```txt
   README.md
   ```

   <img width="350px" src="https://github.com/user-attachments/assets/e068334f-0c2f-47be-84a2-64839f5b4347"/>

1. Open the file and insert the following content.

   ```md
   # Stack Overflown

   Organize the falling blocks into the current debug pattern before the stack overflows! ⏳
   ```

1. In the left navigation, select the **Source Control** tab. Notice the `README.md` file is listed under the **Changes** area.

   <img width="350px" src="https://github.com/user-attachments/assets/5cc48f1e-1cd9-4c06-b7f7-18138b1962ff"/>

1. Promote the file to the staging staging area by hovering over file and selecting the plus sign `+` button.

   <img width="350px" src="https://github.com/user-attachments/assets/c2218c5b-f362-48c2-b5bf-55a8f193b87b"/>

1. Enter a commit message and press the **Commit** button.

   ```txt
   Start game documentation
   ```

   <img width="350px" src="https://github.com/user-attachments/assets/a771b674-1fc2-40dc-a9bf-080bf83c46fc"/>

1. For a second commit, also the following content to `README.md`.

   ```md
   ## How to Develop

   - `main.html` - the game container for playing
   - `style.css` - the game formatting and styling
   - `main.js` - the primary game logic
   - `patterns.js` - the error patterns to match during gameplay
   ```

1. Promote the change to staging and commit with the below message.

   ```txt
   Start developer docs
   ```

   <img width="350px" src="https://github.com/user-attachments/assets/e140ed6a-cb1b-4a2c-980e-53fb4d7ddd74"/>

### ⌨️ Activity 3: (Optional) Ignore files from version control

As your project grows, you will quickly realize you do not want some files tracked. You can tell Git to ignore them with a `.gitignore` file.

This can help prevent accidentally sharing sensitive information like passwords, and help keep the project organized by not saving generated content like analysis results or builds.

1. Create a `.gitignore` file.

   ```bash
   touch .gitignore
   ```

1. Add common patterns like `*.log`, `.env`, and `node_modules/`

1. Create a temporary file that matches a gitignore pattern

1. Verify that `git status` doesn't show the ignored file

1. Stage and commit the `.gitignore` file

<details>
<summary>Having trouble? 🤷</summary><br/>

- If `git status` shows unexpected files, double-check the files you have staged with `git add <file name>`
- Use `git add .` to stage all files at once (except ignored files)
- Remember to commit the `.gitignore` file itself so others can benefit from it

</details>
