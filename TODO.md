# TODO: Space Iron Development Roadmap

## Main Goal
Build and deploy a 2D, menu-driven, massively multiplayer online strategy game (Space Iron) inspired by Planetarion, for Android, iOS, and Steam, with full backend, authentication, in-app purchases, and ad monetization.

---

### 1. Project Setup & Tooling
- [ ] Set up Flutter project for Android, iOS, and desktop (Steam)
- [ ] Set up version control (Git) and CI/CD pipelines
- [ ] Set up AWS account and configure AWS GameLift for backend hosting
- [ ] Set up project management tools (issue tracker, documentation, etc.)

### 2. Core Game Architecture
- [ ] Design and implement the main menu and navigation system
- [ ] Define and implement the core data models (players, planets, resources, fleets, alliances, etc.)
- [ ] Set up state management for Flutter
- [ ] Implement localization and accessibility support

### 3. Backend & Networking
- [ ] Design backend architecture using AWS GameLift
- [ ] Implement REST/gRPC APIs for all game actions
- [ ] Set up secure user authentication (OAuth, JWT, or Cognito)
- [ ] Implement real-time/tick-based game logic on the backend
- [ ] Set up database for persistent storage
- [ ] Implement server-side validation and anti-cheat
- [ ] Set up monitoring, logging, and analytics

### 4. User Authentication & Account Management
- [ ] Integrate sign-up/sign-in with email, Google, Apple, and Steam
- [ ] Implement password reset, account linking, and profile management
- [ ] Support guest accounts and account upgrades

### 5. Game Mechanics Implementation
#### 5.1. Universe Structure
- [ ] Implement galaxy/star system/planet generation and navigation UI
- [ ] Implement planet/colony management screens

#### 5.2. Resources & Economy
- [ ] Implement resource production, storage, and upgrades
- [ ] Implement trading system and dynamic market UI

#### 5.3. Construction & Technology
- [ ] Implement building construction/upgrade menus
- [ ] Implement research and technology trees

#### 5.4. Fleets, Armies & Combat
- [ ] Implement ship/army construction and management
- [ ] Implement fleet movement, attack, defense, and combat resolution
- [ ] Implement combat reports and battle logs

#### 5.5. Defense & Espionage
- [ ] Implement defensive structure management
- [ ] Implement espionage, scanning, and covert ops UI and logic

#### 5.6. Alliances, Diplomacy & Cooperation
- [ ] Implement alliance/guild creation, management, and chat
- [ ] Implement federations, treaties, and diplomacy features
- [ ] Implement shared resources and mega-projects

#### 5.7. Magic, Science & Special Abilities
- [ ] Implement magic system (runes, spells, effects)
- [ ] Implement science system (bonuses, research)
- [ ] Implement race/personality selection and abilities

#### 5.8. Missions, Events & Progression
- [ ] Implement mission system (attack, raid, colonize, etc.)
- [ ] Implement random events and scheduled speed rounds
- [ ] Implement quests, achievements, and rewards

#### 5.9. Victory, Scoring & Rankings
- [ ] Implement scoring system and leaderboards
- [ ] Implement multiple victory conditions and end-of-round logic

### 6. UI/UX & Visuals
- [ ] Design and implement 2D menu-driven UI for all game features
- [ ] Implement responsive layouts for mobile and desktop
- [ ] Add animations, icons, and visual feedback for actions
- [ ] Implement notification and alert system

### 7. Social & Community Features
- [ ] Implement in-game chat (global, alliance, private)
- [ ] Implement friend lists and messaging
- [ ] Implement moderation tools and reporting

### 8. Monetization
- [ ] Integrate in-app purchases (IAP) for Android, iOS, and Steam
- [ ] Integrate ad networks (AdMob, Unity Ads, etc.) for Android and iOS
- [ ] Implement ad display logic (rewarded ads, interstitials, banners)
- [ ] Implement purchase validation and anti-fraud measures

### 9. Testing & QA
- [ ] Write unit, integration, and end-to-end tests for frontend and backend
- [ ] Set up automated testing in CI/CD
- [ ] Conduct manual QA on all platforms and devices
- [ ] Run closed/open beta tests and gather feedback

### 10. Deployment & Release
- [ ] Prepare app store assets (icons, screenshots, descriptions)
- [ ] Set up Google Play Store, iOS App Store, and Steamworks accounts
- [ ] Build and submit apps for review on all platforms
- [ ] Set up backend scaling, monitoring, and support
- [ ] Launch and monitor live game


### 12. Mocking Backend Resources (for Frontend Development)
- [ ] Define API contract and example responses for all major endpoints
- [ ] Choose and set up a local mock server tool (e.g., json-server, Mockoon, WireMock)
- [ ] Implement mock endpoints for authentication, player data, and game actions
- [ ] Create mock data for typical game states (new user, active user, alliance member, etc.)
- [ ] Integrate frontend with mock server for local development
- [ ] Document mock server setup and usage for the team
- [ ] Add scripts to start/stop the mock server easily
- [ ] Plan for easy switching between mock and real backend

### 11. Post-Launch Support & Updates
- [ ] Monitor analytics, crash reports, and user feedback
- [ ] Patch bugs and security issues
- [ ] Release regular content updates and events
- [ ] Support community and moderate in-game behavior
