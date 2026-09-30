# Copilot Instructions

## Project
- This is a Node.js application using Express 5 and EJS.
- The project uses native JavaScript ES modules (`"type": "module"`). Keep imports and exports in ESM syntax.
- `server.js` configures Express, serves `public/`, and registers page routes. EJS templates live in `src/views/`; shared page fragments live in `src/views/partials/`.
- Static assets belong in `public/`, grouped by type such as `public/css/` and `public/images/`.

## Conventions
- Follow the existing indentation and naming style in the file being changed.
- Keep route handlers and view data consistent with the existing Express/EJS pattern. Pass page-specific values such as `title` to `res.render()` rather than hard-coding them into shared partials.
- Use escaped EJS output (`<%= ... %>`) for dynamic text. Use unescaped output only when rendering trusted markup.
- Keep changes scoped to the requested behavior and avoid adding dependencies unless the feature needs them.
- Never expose `.env` values or add secrets to source control.

## Commands
- `npm run dev` starts the app with nodemon and loads `.env` through `nodemon.json`.
- `npm start` starts the app with Node.js; set environment variables through the shell when needed.
- The app defaults to port `3000` and can be run with `npm start`.
- There are currently no test or lint scripts in `package.json`; do not claim they were run. For route or template changes, start the app and verify the affected page in a browser when practical.