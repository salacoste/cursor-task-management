---
description: 
globs: 
alwaysApply: false
---
# Setup MySQL MCP Server

## Purpose
This rule helps you configure and launch the benborla/mcp-server-mysql for use with Cursor and LLMs.

## Instructions

1. **Clone the MCP Server repository:**
   ```
   git clone https://github.com/benborla/mcp-server-mysql.git
   cd mcp-server-mysql
   ```

2. **Install dependencies:**
   ```
   pnpm install
   ```

3. **Configure environment variables:**
   - Copy `.env.dist` to `.env` and fill in your MySQL credentials:
     ```
     cp .env.dist .env
     ```
   - Edit `.env`:
     ```
     MYSQL_HOST=127.0.0.1
     MYSQL_PORT=3306
     MYSQL_USER=your_user
     MYSQL_PASS=your_password
     MYSQL_DB=your_database
     ```

4. **Build and run the server:**
   ```
   pnpm run build
   pnpm start
   ```

5. **(Optional) Docker usage:**
   - You can also use Docker to run the server:
     ```
     docker build -t mcp-server-mysql .
     docker run -p 8080:8080 --env-file .env mcp-server-mysql
     ```

6. **Connect Cursor or your LLM to the MCP server:**
   - Use the server URL (default: `http://localhost:8080`) in your tool's configuration.

## Security Note
- The default configuration is read-only. To enable write operations, set the appropriate environment variables:
  ```
  ALLOW_INSERT_OPERATION=true
  ALLOW_UPDATE_OPERATION=true
  ALLOW_DELETE_OPERATION=true
  ```

## Reference
- [benborla/mcp-server-mysql README](https://github.com/benborla/mcp-server-mysql?tab=readme-ov-file)