## Step 1: Introduction to Git Version Control

You've been working on a project and realized organizing backups has become difficult. And, since everyone shares updates differently, collaborating with them is very confusing.

After some quick searching, you learned about [Git](https://git-scm.com/). Supposedly, it makes keeping track of changes and collaborating with others easy. It removes the confusion of older methods like file naming conventions, share drives, and emailed copies of files.

> [!IMPORTANT]
> This exercise teaches Git usage on a machine with it already installed.
> If you want to install it on your own computer, we recommend the official [Git site](https://git-scm.com) for installation guides, since there are many computer configurations.

### 📖 Theory: What is Version Control?

Version control systems solve common problems developers face when managing code changes over time. Issues like:

- Backup and Recovery
- Sandboxed Experimentation
- Parallel development
- Locked files
- File duplication
- Conflicting changes
- Team collaboration

If have ever experienced any of the below situations, you might like Git version control! 😎

- `my-project-final-v2-really3.zip`
- "When did that stop working? I didn't change anything!" (but you know you did)
- "The file is locked. I'll work on a copy until he gets back on Monday."
- "Which email had v2 in it? I think the one from last Wednesday."

### What is "Git" version control?

Git is a [distributed version control system](https://en.wikipedia.org/wiki/Distributed_version_control), meaning each developer has a complete copy of the project history. This differs from centralized systems where there is only one copy in a shared location.

This provides advantages like:

- Working offline - Most operations are processed locally.
- Increased robustness - Distributed copies act as backups.
- Flexible workflows - Developer can use their own processes and tooling.

### How do I use Git?

Git is an [open-source](https://en.wikipedia.org/wiki/Open_source) tool built by developers for developers. As such, the community has consistently developed features to cover most needs.

For example, the community has streamlined Git into nearly all development workflows. Here are a few:

- **Command Line Interface (CLI)** - The original tool and source of all functionality.
- **Code Editors** - Alongside your favorite coding editors/tools. Examples:
  - Visual Studio Code
  - JetBrains IDEs
  - Xcode
  - Emacs/VIM
- **Hosting Services** - Centralized Git Hosts, with online editing through the web browser. Examples:
  - GitHub
  - GitLab
  - Gitea
  - Azure DevOps
  - AWS CodeCommit
  - BitBucket
- **Desktop Applications** - Friendly graphical interfaces. Examples:
  - GitHub Desktop
  - Sourcetree
  - TortoiseGit
  - GitKraken
  - Git Butler
  - And many more: https://git-scm.com/tools/guis

### ⌨️ Activity: Open the sample project

To start practicing Git, let's first open a pre-configured development environment and explore the sample project.

1. Right-click the below button to open the **Create Codespace** page in a new tab. Use the default configuration.

   [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/{{full_repo_name}}?quickstart=1)

   > 🪧 **Note**: Typically a [GitHub Codespace](https://github.com/features/codespaces) automatically includes the repository code and all required settings. This is a modified experience so you can practice from scratch.

1. Confirm the **Repository** field is your copy of the exercise, not the original, then click the green **Create Codespace** button.

   - ✅ Your copy: `/{{full_repo_name}}`
   - ❌ Original: `/skills/introduction-to-git`

1. Wait a moment for Visual Studio Code to load in your browser.

1. In the left navigation tabs, select **File Explorer** to show the files. Right-click on `src/index.html` and select **Show Preview** to see our sample game in action.

   > ❗️ **Warning**: Don't make any changes!
   > We have not added version control yet! 😱

   <img width="350px" src="https://github.com/user-attachments/assets/c5f60f24-27fb-4670-ab0a-c00aa723672c"/><br/>

   <img width="500px" src="https://github.com/user-attachments/assets/a20529f3-8e42-464b-8d84-b0880dd14383"/>

> [!TIP]
> Feel free to leave the game open and give it more trial-runs as we make changes! 🧑‍🚀

### ⌨️ Activity 2: Git in the CLI

Let's start with using Git in the command line interface (CLI). This is the source of all Git functionality and most powerful option.

1. If the integrated terminal is not already available, open it using `Ctrl+Shift+P` then searching for and selecting `View: Toggle Terminal`

   <img width="500px" src="https://github.com/user-attachments/assets/4bbf918a-f87c-4875-b7fd-61d8b16a70e1"/>

1. Show the currently installed version of Git, to verify it is installed.

   ```bash
   git --version
   ```

   <img width="500px" src="https://github.com/user-attachments/assets/0e09991b-829f-4028-b951-87bc5fa47bfc"/>

1. Show the Git help documentation.

   ```bash
   git --help
   ```

   <img width="500px" src="https://github.com/user-attachments/assets/c447adf3-9cc1-4106-9a49-f2bf705d396c"/>

### ⌨️ Activity 3: Set your Git identity

Before we can start versioning our game, let's provide Git our identity so it can associate us as the author for any changes.

1. Set your display name.

   ⚠️ Don't forget to replace `First` and `Last`!

   ```bash
   git config --global user.name "First Last"
   ```

1. Set your email address.

   ⚠️ Don't forget to replace `me@example.com`!

   ```bash
   git config --global user.email "me@example.com"
   ```

1. Confirm the changes by viewing the configuration.

   ```bash
   git config --global --list
   ```

   <img width="500px" src="https://github.com/user-attachments/assets/62688039-3601-4a23-8f61-408210faff0a"/>

1. With your author details configured, Mona should already be busy checking your work. Give her a moment and keep watch in the comments. You will see her respond with progress info and the next steps.

> [!TIP]
> You can also change your username and email per project, if you have multiple accounts. On an **existing** project repository, use `--local` instead of `--global`.

<details>
<summary>Having trouble? 🤷</summary><br/>

- Make sure you replace "First Last" and "me@example.com" with your actual information.

</details>
