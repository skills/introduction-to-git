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

   <img width="500px" src="3-1.png"/>

1. Show one commit per line.

   ```bash
   git log --oneline
   ```

   <img width="500px" src="3-2.png"/>

1. Show a visual graph of the full commit history.

   ```bash
   git log --graph --oneline
   ```

   > 🪧 **Note**: This will look more interesting in a future step after the game has more history.

1. Copy the **Commit ID** of the "Initial commit" entry. Both the long and short form will work.

1. Use it to checkout the earlier version. Notice the `README.md` file disappeared.

   ```bash
   git checkout <commit id>
   ```

   <img width="500px" src="3-3.png"/>

   <img width="350px" src="3-4.png"/>

1. Return to the newest commit. Notice the `README.md` file has returned. 🧐

   ```bash
   git checkout -
   ```

   <img width="350px" src="3-5.png"/>

   <img width="350px" src="3-6.png"/>

### ⌨️ Activity 2: Explore the history (using VS Code)

1. In the left navigation, open the **Source Control** tab and expand the **Graph** panel. Notice the timeline list of your recent commits.

   <img width="350px" src="3-7.png"/>

1. Click the commit names to expand a list of the files modified by that commit.

   <img width="350px" src="3-8.png"/>

<details>
<summary>Having trouble? 🤷</summary><br/>

- Use `git log --help` to see all available options for viewing history.

</details>
