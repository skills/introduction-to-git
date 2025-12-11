## Step 4: Comparing Changes

You're working on your project and want to see exactly what changes you've made before committing them. Understanding file differences is crucial for reviewing your work and catching errors.

### 📖 Theory: Understanding Diffs

Git uses symbols and coloring to show file changes:

- `+` in green indicates lines that were added
- `-` in red indicates lines that were removed

> [!TIP]
> You can change the default colors for comparison with the below commands.
>
> ```bash
> git config --global color.diff.old yellow
> git config --global color.diff.new blue
> ```

### What are the important Git commands?

The `git diff` command shows differences between various states:

- `git diff` - Differences between the working directory and the previous commit.
- `git diff --staged` - Differences between staging area and previous commit.
- `git diff HEAD~1` - Differences between current commit and previous commit.

### ⌨️ Activity 1: View differences (using the CLI)

1. Edit an existing file (e.g., README.md).

   - Modify a line
   - Add a new line
   - Delete a line

1. View the difference between your working directory and the last commit.

   ```bash
   git diff README.md
   ```

1. Promote the changes into the staging area.

   ```bash
   git add README.md
   ```

1. Run the same comparison command. Notice that no changes are displayed.

   ```bash
   git diff README.md
   ```

1. Now, show a comparison of the staged area to the last commit.

   ```bash
   git diff --staged README.md
   ```

1. Commit the changes with the following message.

   ```md
   fix typo in game name
   ```

### ⌨️ Activity 2: View differences (using VS Code)

1. Open the `patterns.js` file.

2. Add the following new error pattern type and save the file. IN the left file explorer, notice file file name changed color and the `M` indicating it is modified.

   ```js
   // (pending)
   ```

3. In the left navigation, select the **Source Control** tab.

4. In the **Changes** list, double-click the file to open the Diff (comparison) view.

   > 💡 **Tip**: You can modify the content in the comparison view for live feedback.

5. Promote the the file to the **staging** area. Don't commit it yet!

   - The comparison view stopped showing changes since the current file matches the **Staging** area.

6. In the **Staged Changes** list, double-click the file to open the Diff (comparison) view.

   - Noticed that you can't make changes. They are locked in preparation for committing.

7. Add the following commit message and press the **Commit** button.

   ```txt
   add error pattern for XYZ
   ```

<details>
<summary>Having trouble? 🤷</summary><br/>

- Use `git diff --help` to see all available diff options
- If the list of change is longer than one screen, you can press `q` to exit the scrolling file viewer.

</details>
