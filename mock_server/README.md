# Mock Server Setup (json-server)

This directory contains a local mock server for frontend development using [json-server](https://github.com/typicode/json-server).

## Getting Started

1. **Install json-server** (globally or as a dev dependency):
   ```sh
   npm install -g json-server
   # or
   npm install --save-dev json-server
   ```
2. **Start the mock server** (recommended):
   ```sh
   ./mock_server/start_mock_server.sh
   ```
   Or manually:
   ```sh
   json-server --watch mock_server/db.json --port 4000
   ```
3. **Stop the mock server** (Linux/macOS):
   ```sh
   ./mock_server/stop_mock_server.sh
   ```
4. The API will be available at [http://localhost:4000](http://localhost:4000)

## Endpoints
- `/players` — Player data
- `/planets` — Planet data
- `/auth` — Authentication (mocked)

## Usage
- Integrate the frontend with the mock server for local development (see `api.dart` in the Flutter app).
- Update `db.json` to add or modify mock data as needed.

### Example API Call (using curl)
```sh
curl http://localhost:4000/players
```

### Example API Call (in Dart)
```dart
import 'package:http/http.dart' as http;
final response = await http.get(Uri.parse('http://localhost:4000/players'));
```

## Troubleshooting
- If you get an error about the port being in use, stop any other process using port 4000 or change the port number.
- If you change `db.json`, the server will reload automatically.
- If you add new endpoints, update both `db.json` and this README.

## Switching Between Mock and Real Backend
- Use environment variables or config files in your frontend to toggle between the mock server and the real backend.
- **Flutter example:**
  - By default, the app uses the mock server at `http://localhost:4000`.
  - To use the real backend, run:
    ```sh
    flutter run --dart-define=USE_MOCK_API=false
    ```
  - See `ApiConfig` in `lib/api.dart` for details.

---
