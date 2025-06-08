# 🚀 AI Dev Tasks Template for Cursor 🤖

**Note: This is a template repository. Clone this to start new projects with structured AI development workflow.**

## 🎯 How to Use This Template

1. **Clone this repository** for your new project:
   ```bash
   git clone https://github.com/your-username/vibe-prd.git my-new-project
   cd my-new-project
   ```

2. **Follow the workflow below** to generate your PRD and task list

3. **Project files will be updated** automatically during task generation:
   - **README.md** will be rewritten for your specific project (this template content will be replaced)
   - **LICENSE** will be updated with your preferred license or removed if not needed

4. **Important**: The first tasks generated will always be setup tasks to create your project-specific README and handle the license file

### 📁 What Your Final Project Structure Will Look Like

After using this template, your project will have:
```
my-new-project/
├── README.md (rewritten for your specific project)
├── LICENSE (updated with your chosen license or removed)
├── .cursorrules/ (AI workflow files - keep these)
├── tasks/
│   ├── prd-your-feature.md (your PRD)
│   └── tasks-prd-your-feature.md (your task list)
├── src/ (your actual project code)
├── package.json (if applicable)
└── ... (other project files)
```

---

## 📖 About This Template

Welcome to **AI Dev Tasks**! This repository provides a collection of `.mdc` (Markdown Command) files designed to supercharge your feature development workflow within the Cursor editor. By leveraging these commands with Cursor's AI Agent, you can systematically approach building features, from ideation to implementation, with built-in checkpoints for verification.

Stop wrestling with monolithic AI requests and start guiding your AI collaborator step-by-step!

## ✨ The Core Idea

Building complex features with AI can sometimes feel like a black box. This workflow aims to bring structure, clarity, and control to the process by:

1. **Defining Scope:** Clearly outlining what needs to be built with a Product Requirement Document (PRD).
2. **Detailed Planning:** Breaking down the PRD into a granular, actionable task list.
3. **Iterative Implementation:** Guiding the AI to tackle one task at a time, allowing you to review and approve each change.

This structured approach helps ensure the AI stays on track, makes it easier to debug issues, and gives you confidence in the generated code.

## Workflow: From Idea to Implemented Feature 💡➡️💻

Here's the step-by-step process using the `.mdc` files in this repository:

### 1️⃣ Create a Product Requirement Document (PRD)

First, lay out the blueprint for your feature. A PRD clarifies what you're building, for whom, and why.

You can create a lightweight PRD directly within Cursor:

1. Ensure you have the `.cursorrules/01-create-prd.mdc` file from this repository accessible.
2. In Cursor's Agent chat, initiate PRD creation:  
```  
Use @.cursorrules/01-create-prd.mdc  
Here's the feature I want to build: [Describe your feature in detail]  
Reference these files to help you: [Optional: @file1.py @file2.ts]  
```  
_(Pro Tip: For complex PRDs, using MAX mode in Cursor is highly recommended if your budget allows for more comprehensive generation.)_

### 2️⃣ Database Assessment (Optional)

After creating your PRD, determine if your feature needs database functionality:

1. Use the database assessment prompt:
```
Use @.cursorrules/02-setup-postgres-mcp.mdc
Reference my PRD: @tasks/prd-MyFeature.md
```

2. If you need database functionality, follow the PostgreSQL MCP setup guide in `.cursorrules/setup-postgres-mcp.md`
3. If not, skip to step 3

### 3️⃣ Generate Your Task List from the PRD

With your PRD drafted (e.g., `prd-MyFeature.md`), the next step is to generate a detailed, step-by-step implementation plan for your AI Developer.

1. Ensure you have `.cursorrules/03-generate-tasks.mdc` accessible.
2. In Cursor's Agent chat, use the PRD to create tasks:  
```  
Now take @tasks/prd-MyFeature.md and create tasks using @.cursorrules/03-generate-tasks.mdc  
```  
_(Note: Replace `@prd-MyFeature.md` with the actual filename of the PRD you generated in step 1.)_

### 4️⃣ Examine Your Task List

You'll now have a well-structured task list, often with tasks and sub-tasks, ready for the AI to start working on. This provides a clear roadmap for implementation.

### 5️⃣ Instruct the AI to Work Through Tasks (and Mark Completion)

To ensure methodical progress and allow for verification, we'll use `task-list.mdc`. This command instructs the AI to focus on one task at a time and wait for your go-ahead before moving to the next.

1. Create or ensure you have the `.cursorrules/04-task-list.mdc` file accessible.
2. In Cursor's Agent chat, tell the AI to start with the first task (e.g., `1.1`):  
```  
Please start on task 1.1 and use @.cursorrules/04-task-list.mdc  
```  
_(Important: You only need to reference `@.cursorrules/04-task-list.mdc` for the first task. The instructions within it guide the AI for subsequent tasks.)_

The AI will attempt the task and then prompt you to review.

### 6️⃣ Review, Approve, and Progress ✅

As the AI completes each task, you review the changes.

* If the changes are good, simply reply with "yes" (or a similar affirmative) to instruct the AI to mark the task complete and move to the next one.
* If changes are needed, provide feedback to the AI to correct the current task before moving on.

You'll see a satisfying list of completed items grow, providing a clear visual of your feature coming to life!

While it's not always perfect, this method has proven to be a very reliable way to build out larger features with AI assistance.

## 🗂️ Files in this Repository

### Core Workflow Files (Sequential Order)
* **`.cursorrules/01-create-prd.mdc`**: Guides the AI in generating a Product Requirement Document for your feature.
* **`.cursorrules/02-setup-postgres-mcp.mdc`**: Database assessment prompt - asks if your feature needs database functionality and guides PostgreSQL MCP setup.
* **`.cursorrules/03-generate-tasks.mdc`**: Takes a PRD markdown file as input and helps the AI break it down into a detailed, step-by-step implementation task list.
* **`.cursorrules/04-task-list.mdc`**: Instructs the AI on how to process the generated task list, tackling one task at a time and waiting for your approval before proceeding.

### Database Integration (Optional)
* **`.cursorrules/setup-postgres-mcp.md`**: Detailed guide for PostgreSQL MCP integration with Cursor.
* **`.cursorrules/postgres-mcp-config.example.json`**: Example PostgreSQL MCP configuration for Cursor.

### Output Directory
* **`tasks/`**: Directory where PRDs and task lists will be saved.

## 🌟 Benefits

* **Structured Development:** Enforces a clear process from idea to code.
* **Step-by-Step Verification:** Allows you to review and approve AI-generated code at each small step, ensuring quality and control.
* **Manages Complexity:** Breaks down large features into smaller, digestible tasks for the AI, reducing the chance of it getting lost or generating overly complex, incorrect code.
* **Improved Reliability:** Offers a more dependable approach to leveraging AI for significant development work compared to single, large prompts.
* **Clear Progress Tracking:** Provides a visual representation of completed tasks, making it easy to see how much has been done and what's next.

## 🛠️ How to Use

1. **Clone or Download:** Get these `.mdc` files into your project or a central location where Cursor can access them.
2. **Follow the Workflow:** Systematically use the `.mdc` files in Cursor's Agent chat as described in the 5-step workflow above.
3. **Adapt and Iterate:**  
   * Feel free to modify the prompts within the `.mdc` files to better suit your specific needs or coding style.  
   * If the AI struggles with a task, try rephrasing your initial feature description or breaking down tasks even further.

## 💡 Tips for Success

* **Be Specific:** The more context and clear instructions you provide (both in your initial feature description and any clarifications), the better the AI's output will be.
* **MAX Mode for PRDs:** As mentioned, using MAX mode in Cursor for PRD creation (`.cursorrules/01-create-prd.mdc`) can yield more thorough and higher-quality results if your budget supports it.
* **Correct File Tagging:** Always ensure you're accurately tagging the PRD filename (e.g., `@tasks/prd-MyFeature.md`) when generating tasks.
* **Patience and Iteration:** AI is a powerful tool, but it's not magic. Be prepared to guide, correct, and iterate. This workflow is designed to make that iteration process smoother.

## 🤝 Contributing

Got ideas to improve these `.mdc` files or have new ones that fit this workflow? Contributions are welcome! Please feel free to:

* Open an issue to discuss changes or suggest new features.
* Submit a pull request with your enhancements.

---

Happy AI-assisted developing!

# MCP Server Integration Guide

This guide explains how to set up Model Context Protocol (MCP) servers for MySQL and PostgreSQL, enabling Cursor and AI assistants to securely query your databases for schema inspection, data analysis, and report generation.

---

## Table of Contents
- [MySQL MCP Server Setup](#mysql-mcp-server-setup)
- [PostgreSQL MCP Server Setup](#postgresql-mcp-server-setup)

---

## MySQL MCP Server Setup

> Based on [benborla/mcp-server-mysql](https://github.com/benborla/mcp-server-mysql?tab=readme-ov-file)

### 1. Clone the MCP Server repository
```bash
git clone https://github.com/benborla/mcp-server-mysql.git
cd mcp-server-mysql
```

### 2. Install dependencies
```bash
pnpm install
```

### 3. Configure environment variables
- Copy `.env.dist` to `.env` and fill in your MySQL credentials:
  ```bash
  cp .env.dist .env
  ```
- Edit `.env`:
  ```env
  MYSQL_HOST=127.0.0.1
  MYSQL_PORT=3306
  MYSQL_USER=your_user
  MYSQL_PASS=your_password
  MYSQL_DB=your_database
  ```

### 4. Build and run the server
```bash
pnpm run build
pnpm start
```

### 5. (Optional) Docker usage
You can also use Docker to run the server:
```bash
docker build -t mcp-server-mysql .
docker run -p 8080:8080 --env-file .env mcp-server-mysql
```

### 6. Connect Cursor or your LLM to the MCP server
Use the server URL (default: `http://localhost:8080`) in your tool's configuration.

### Security Note
- The default configuration is read-only. To enable write operations, set the following environment variables:
  ```env
  ALLOW_INSERT_OPERATION=true
  ALLOW_UPDATE_OPERATION=true
  ALLOW_DELETE_OPERATION=true
  ```

---

## PostgreSQL MCP Server Setup

> Based on [Model Context Protocol PostgreSQL Server](https://github.com/modelcontextprotocol/servers/tree/main/src/postgres)

### Overview
The PostgreSQL MCP server enables Cursor and AI assistants to directly query your PostgreSQL database in a secure, read-only manner. This is useful for inspecting data, analyzing schemas, or generating reports.

### Prerequisites
- PostgreSQL database instance (local or remote)
- Node.js and npm installed
- Database credentials with read access
- Cursor IDE with MCP support

### Installation
#### Option 1: Global Installation
```bash
npm install -g @modelcontextprotocol/server-postgres
```
#### Option 2: Using npx (Recommended)
```bash
npx -y @modelcontextprotocol/server-postgres postgresql://username:password@hostname:port/database
```

### Configuration for Cursor
1. **Create or Edit Configuration File**
   - macOS: `~/Library/Application Support/Cursor/User/settings.json`
   - Windows: `%APPDATA%/Cursor/User/settings.json`
   - Linux: `~/.config/Cursor/User/settings.json`

2. **Add PostgreSQL MCP Configuration**
```json
{
  "mcpServers": {
    "postgres": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-postgres",
        "postgresql://username:password@hostname:port/database"
      ]
    }
  }
}
```

3. **Environment Variables (Recommended for Security)**
```json
{
  "mcpServers": {
    "postgres": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-postgres"
      ],
      "env": {
        "POSTGRES_URL": "postgresql://username:password@hostname:port/database"
      }
    }
  }
}
```
Set your environment variable:
```bash
export POSTGRES_URL="postgresql://username:password@hostname:port/database"
```

### Security Best Practices
- Create a read-only database user for MCP access.
- Never commit credentials to version control.
- Use environment variables for sensitive information.
- Enable SSL for remote connections.

#### Example: Create a Read-Only User
```sql
CREATE USER mcp_readonly WITH PASSWORD 'secure_password';
GRANT CONNECT ON DATABASE your_database TO mcp_readonly;
GRANT USAGE ON SCHEMA public TO mcp_readonly;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO mcp_readonly;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO mcp_readonly;
```

### Usage Examples
- Schema exploration: "Show me the structure of my users table"
- Data analysis: "Show me the top 10 customers by order value"
- Report generation: "Generate a monthly revenue report"

### Troubleshooting
- Ensure PostgreSQL server is running and accessible
- Verify credentials and permissions
- Restart Cursor after configuration changes
- Use debug flags for detailed logs

### Resources
- [PostgreSQL MCP Server GitHub](https://github.com/modelcontextprotocol/servers/tree/main/src/postgres)
- [Model Context Protocol Documentation](https://modelcontextprotocol.io/)
- [Cursor MCP Integration Guide](https://docs.cursor.com/)

## 🛠️ Integrating This Template into Another Project

You can quickly integrate all workflow files, rules, and configuration examples from this repository into any other project using the provided shell script:

### integrate-cursor-template.sh

This script downloads the latest version of this repository and copies all files (except .git and .github) into a target directory of your choice.

#### Usage
```bash
./integrate-cursor-template.sh /path/to/your/target/project
```
- Replace `/path/to/your/target/project` with the absolute or relative path to your destination project directory.
- The script will copy all template files and folders, preserving their structure.
- Existing files in the target directory with the same names will be overwritten.

#### Example
```bash
./integrate-cursor-template.sh ~/Documents/Code_Projects/my-awesome-app
```

#### Notes
- The script requires `curl`, `unzip`, and `rsync` to be installed on your system.
- It does **not** copy any git history or .git/.github folders, so it is safe to use in projects with their own git repositories.
- All output and comments are in English for maximum compatibility.

--- 