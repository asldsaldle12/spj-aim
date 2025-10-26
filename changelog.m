# Changelog

## [Version 0.2] - 2024

### Fixed
- Crash issues with comprehensive error handling (pcall wrapping throughout codebase)
- ESP not respecting knocked or forcefield protected players
- Camera lock transitions being too abrupt during target acquisition
- FOV circle transparency not updating correctly
- Relative mode cursor drift and desync issues
- Prediction calculations not working correctly on Y-axis
- Player list not dynamically updating when players join or leave
- Instant snap being artificially limited by hard-coded movement clamps

---

### Added

#### Game-Specific Features
- **Prison Life Integration**
  - Automatic game detection (PlaceId: 155615604)
  - Weapon pickup system with buttons for Shotgun, AK47, M9, and M4A1
  - Dedicated Prison Life tab in UI

#### Aim Methods
- **Camera Lock (Cam) Mode**
  - Direct camera CFrame manipulation for more natural-looking aim
  - Smooth camera transitions with easing
  - Configurable smoothness and accuracy controls
- **Auto Cam in First Person**
  - Automatically switches to Cam mode when entering first person
  - Reverts to previous method when exiting first person
  - Maintains aimbot state during mode transitions
- **Randomize Target Part**
  - Randomly switches target body parts for unpredictability
  - Configurable delay between switches (0.1-5 seconds)
  - Works with both R6 and R15 character rigs

#### Targeting System
- **Knock Check**
  - Ignores knocked, ragdolled, or platform-stand players
  - Checks both PlatformStand property and Ragdoll state
- **ForceField Check**
  - Automatically skips players with active ForceField
  - Works for both targeting and ESP rendering
- **Distance Check**
  - Maximum distance limiter for target acquisition
  - Range: 100-5000 studs
  - Configurable via slider
- **Sticky Wall Check**
  - Maintains lock when target moves behind obstacles
  - Optional alternative to standard wall check
- **Player Whitelist**
  - Dropdown selection to exclude specific players from targeting
  - Dynamic player list with refresh functionality
- **Priority Target**
  - Dropdown selection to prioritize specific player
  - Always locks onto priority target first if in FOV

#### Legit Features
- **Sticky Aim**
  - Subtle magnetic effect toward target
  - Adjustable strength (0-1 scale)
  - Works across all aim methods
- **Advanced Shake System**
  - Separate X and Y axis shake controls
  - Shake amount slider (0-100%)
  - Shake speed multiplier (0.1-10x)
  - Natural sine/cosine wave patterns
- **DPI Restrictor**
  - Scale mouse movement based on DPI value
  - Range: 0-2000 DPI
  - Simulates lower DPI for smoother aim
- **Stability Control**
  - Reduces movement delta by percentage
  - Range: 0-100%
  - Creates more controlled aim
- **Speed Stabilization**
  - Caps maximum movement speed per frame
  - Range: 0-50 units
  - Prevents jerky mouse movements

#### ESP System Overhaul
- **Complete Framework Rewrite**
  - Metatable-based ESP system with proper OOP structure
  - NewFramework utility system for optimized drawing
  - Separate render loop with improved performance
- **Box Features**
  - Box fill option with transparency control
  - Separate outline color picker
  - Configurable outline thickness
- **3D Chams (Highlights)**
  - Full character highlighting through walls
  - Separate fill and outline colors
  - Adjustable transparency for both fill and outline
  - Visible mode option (green when visible)
- **China Hat**
  - 30-segment hat rendered above player head
  - Configurable height, radius, and offset
  - Color and transparency controls
- **Health Bar Improvements**
  - Four position options: Left, Right, Top, Bottom
  - Color lerp from low to high health
  - Improved visual clarity
- **Text Options**
  - Bold text toggle for all text elements
  - Individual color pickers for Name, Distance, Health, Tool
  - Outline color customization
- **Advanced Visibility**
  - Improved raycast-based visibility checks
  - Transparent object penetration detection
  - Non-collidable object handling

#### FOV Enhancements
- **Visual Customization**
  - Thickness slider (1-10 pixels)
  - Filled circle toggle
  - Fill transparency control (0-1)
  - Rainbow mode support for filled circles

#### Prediction System
- **Separate Axis Control**
  - Independent X-axis prediction (0-10x)
  - Independent Y-axis prediction (0-10x)
  - More granular velocity prediction tuning

#### UI Improvements
- **Tabbox System**
  - Organized sub-tabs within main categories
  - Aim Settings: Core and Advanced tabs
  - Target Settings: Checks and Priority tabs
  - FOV Circle: Settings and Style tabs
  - ESP: Elements and Colors tabs
- **New Tabs**
  - Prison Life tab (game-specific features)
  - Legit tab (humanization features)
  - Misc tab (information and utilities)
- **Enhanced Controls**
  - Lock key picker with customizable toggle key
  - Player list refresh button
  - Rig type re-detection button
  - Individual color pickers for 10+ ESP elements
- **Quality of Life**
  - Version number in watermark (v2.5)
  - Discord invite button with clipboard integration
  - Dynamic player name dropdowns
  - Tooltip improvements across all settings

---

### Changed
- **Aim Method Transitions**
  - Improved transition logic for all three methods
  - Smoother easing curves (cubic ease-out)
  - Better handling of target switching
- **Movement Calculations**
  - Removed artificial speed limits for instant snapping capability
  - Removed hard-coded delta clamps for 100% accuracy mode
  - DPI/Stability/Speed controls now apply to all methods appropriately
- **Target Validation**
  - Enhanced safety checks with pcall wrapping
  - More robust character and humanoid validation
  - Better handling of edge cases
- **ESP Rendering**
  - Significantly optimized rendering loop
  - Reduced draw calls with object pooling
  - Better memory management with proper cleanup

---

### Removed
- Legacy ESP system (replaced by new ESP framework)
- WallCheckMode "BetterCheck" option (simplified to single method)
- ContinuousTransition toggle (integrated into main transition logic)
- Duplicate ESP initialization code
- Unused Visuals group placeholder

