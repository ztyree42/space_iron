# Mock Server Setup (json-server)

This directory contains a local mock server for frontend development using [json-server](https://github.com/typicode/json-server).

## Getting Started

1. Install json-server (globally or as a dev dependency):
   ```sh
   npm install -g json-server
   # or
   npm install --save-dev json-server
   ```
2. Start the mock server:
   ```sh
   json-server --watch mock_server/db.json --port 4000
   ```
3. The API will be available at http://localhost:4000

## Endpoints
- `/players`
- `/planets`
- `/auth`

## Usage
- Integrate the frontend with the mock server for local development.
- Update `db.json` to add more mock data as needed.

## Switching Between Mock and Real Backend
- Use environment variables or config files in your frontend to toggle between the mock server and the real backend.

---
