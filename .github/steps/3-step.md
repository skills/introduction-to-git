## Step 3: Exploring Git History

With our game now tracked in Git, let's learn how to explore what changes were made, when they were made, and by whom.

### 📖 Theory: Understanding Git History

Git maintains a complete history of your project through commits. Each commit contains:

- **Unique hash ID**: A unique identifier to easily reference it in the history.
- **Parent commit**: Reference to the previous commit, creating a chain.
- **Author information**: Who made the changes.
- **Timestamp**: When the changes were applied.
- **Commit message**: Description of the changes included in that commit.

Additionally, the `HEAD` pointer is a special label that indicates your current position in the project history. Your project probably looks similar to the below diagram.

```mermaid
---
config:
  theme: 'forest'
---
gitGraph
   commit id: "9c6ef8a Initial commit"
   commit id: "16ac970 Start game documentation" tag: "HEAD"
```

### What are the important Git commands?

Everyone has a different preference for exploring the history.
Here are a few of the common commands and options you will use often.

- `git log` - Display the history of the project.
  - `git log --oneline` - Show one commit per line, but with less detail.
  - `git log --graph` - Show a visual diagram of the commits.
- `git checkout` - Modify tracked files to match a different point in the history.

### ⌨️ Activity 1: Explore the history (using the CLI)

1. Show the detailed commit history.

   ```bash
   git log
   ```

   <img width="500px" src="https://github.com/user-attachments/assets/87e2aa43-7270-4163-a9e6-5ed5f4f1ed63"/>

1. Show one commit per line.

   ```bash
   git log --oneline
   ```

   <img width="500px" src="https://github.com/user-attachments/assets/b49a6352-4233-4903-9254-18eaec569895"/>

1. Show a visual graph of the full commit history.

   ```bash
   git log --graph --oneline
   ```

   > 🪧 **Note**: This will look more interesting in a future step when the history is longer.

1. Copy the **Commit ID** of the `Initial commit` entry. Both the long and short form will work.

1. Use it to checkout the earlier version.

   ```bash
   git checkout <commit id>
   ```

   <img width="500px" src="https://github.com/user-attachments/assets/4d0f6660-e689-47a2-874e-c3d71b32975b"/><br/>

   🪧 Notice the `README.md` file was removed.
   <img width="350px" src="https://github.com/user-attachments/assets/ea61c817-0ac2-430e-b501-d43ea903dae3"/>

1. Return to the newest commit. Notice the `README.md` file has returned. 🧐

   ```bash
   git checkout -
   ```

   <img width="350px" src="https://github.com/user-attachments/assets/5814f14b-fbf5-4090-90f6-32f815f8b773"/><br/>

   <img width="350px" src="https://github.com/user-attachments/assets/da8b4fe4-2e28-42bc-a35a-859b3f0c8b29"/>

### ⌨️ Activity 2: Explore the history (using VS Code)

1. In the left navigation, open the **Source Control** tab and expand the **Graph** panel. Notice the timeline list of your recent commits.

   <img width="350px" src="https://github.com/user-attachments/assets/ce8879ea-7db6-48a4-b686-4a5e147066d4"/><br/>

1. Click the commit names to expand a list of the files modified by that commit.

   <img width="350px" src="https://github.com/user-attachments/assets/1b3d4e1e-c329-4f4a-895d-2276d19b17ca"/>

<details>
<summary>Having trouble? 🤷</summary><br/>

- Use `git log --help` to see all available options for viewing history.

</details>
