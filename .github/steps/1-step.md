## Step 1: Introduction to Git Version Control

You've been working on a project and realized organizing backups has become difficult. And, since everyone shares updates differently, collaborating with them is very confusing.

After some quick searching, you learned about [Git](https://git-scm.com/). Supposedly, it makes keeping track of changes and collaborating with others easy. It removes the confusion of older methods like file naming conventions, share drives, and emailed copies of files.

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
  - JetBrains products
- **Hosting Services** - Centralized Git Hosts, with online editing through the web browser. Examples:
  - GitHub
  - GitLab
  - Azure DevOps
  - AWS CodeCommit
  - BitBucket
- **Desktop Applications** - Friendly graphical interfaces. Examples:
  - GitHub Desktop
  - GitKraken
  - Git Butler
  - And many more: https://git-scm.com/tools/guis

### ⌨️ Activity: Open the Sample Development Environment

To start practicing Git, let's first open a pre-configured development environment and explore the sample project.

> [!IMPORTANT]
> This exercise teaches Git usage, not Git installation. We recommend the official [Git site](https://git-scm.com) for installation guides.

1. Right-click the below button to open the **Create Codespace** page in a new tab. Use the default configuration.

   [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/{{full_repo_name}}?quickstart=1)

1. Confirm the **Repository** field is your copy of the exercise, not the original, then click the green **Create Codespace** button.

   - ✅ Your copy: `/{{full_repo_name}}`
   - ❌ Original: `/skills/customize-your-github-copilot-experience`

1. Wait a moment for Visual Studio Code to load in your browser.

1. In the File Explorer, right-click on `src/main.html` and select **Show Preview** to see our sample game in action.

   > ❗️ **Warning**: Don't make any changes!
   > We have not added version control yet! 😱

### ⌨️ Activity 2: Git in the CLI

Let's start with using Git in the command line interface (CLI). This is the source of all Git functionality and most powerful option.

1. Open the integrated terminal in VS Code using `Ctrl+Shift+P` then `View: Toggle Terminal`

1. Show the currently installed version of Git, to verify it is installed.

   ```bash
   git --version
   ```

1. Show the Git help documentation.

   ```bash
   git --help
   ```

### ⌨️ Activity 3: Git in VS Code

In parallel, Let's also explore the integrated Git features of our code editor (Visual Studio Code).

1. In the left navigation, select the **Source Control** tab.

1. Notice the empty **Changes** panel and **Graph** Panel. We will learn more about these in next steps.

### ⌨️ Activity 4: Configure Your Git Identity

Before we can start versioning with Git, let's tell Git our identity so Git can associate you as the author of future changes.

1. In VSCode, switch to the integrated terminal.

1. Set your display name.

   ```bash
   git config --global user.name "Your Name"
   ```

1. Set your email address.

   ```bash
   git config --global user.email "your.email@example.com"
   ```

1. Confirm the changes by viewing the configuration.

   ```bash
   git config --global --list
   ```

> [!TIP]
> You can also change your username and email per project, if you have multiple accounts. On an existing project, just use `--local` instead of `--global`.

<details>
<summary>Having trouble? 🤷</summary><br/>

- Make sure you replace "Your Name" and "your.email@example.com" with your actual information.

</details>
