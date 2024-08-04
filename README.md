# Breathwork Exercises

Application to guide users through different breathing exercises.

Exercises adapted from James Nestor's *[Breath: The New Science of a Lost Art](https://www.goodreads.com/book/show/48890486-breath)*.

```
+--------+---------------------------------------------+
| Number |                  Exercise                   |
+========+=============================================+
| 1      | Alternate Nostril Breathing (Nadi Shodhana) |
+--------+---------------------------------------------+
| 2      | Breathing Coordination                      |
+--------+---------------------------------------------+
| 3      | Control Pose - Buteyko Breathing Techniques |
+--------+---------------------------------------------+
| 4      | Conscious Breathing - Anchor                |
+--------+---------------------------------------------+
| 5      | Conscious Breathing - CO2 Training          |
+--------+---------------------------------------------+
| 6      | Decongest the Nose                          |
+--------+---------------------------------------------+
| 7      | Yogic Breathing                             |
+--------+---------------------------------------------+
| 8      | Box Breathing                               |
+--------+---------------------------------------------+
| 9      | Box Breathing - Extended Exhalation         |
+--------+---------------------------------------------+
| 10     | 4-7-8 Breathing                             |
+--------+---------------------------------------------+
```

# Breathwork via Terminal:

Terminal application written in Python. `./py-breathwork`

# Breathwork via Garmin Watch:

Garmin watch application written in Monkey C . `./garmin-breathwork`

## Source Directory Structure

The source directory contains the main source code for the breathing app. Below is a description of each file and its role in the application:

### Files

`Exercise.mc`

* Description: Defines the Exercise class, which represents a breathing exercise. This class likely includes properties and methods to manage the steps and duration of the exercise.
* Interactions: Used by breathworkExerciseDelegate.mc to initialize and manage the current exercise.

`breathworkApp.mc`

* Description: Contains the main application class for the breathing app. This class is responsible for initializing the app and managing its lifecycle.
* Interactions: Initializes the app and sets up the main entry point. It may also interact with various delegates to manage different views and states of the app.

`breathworkDelegate.mc`

* Description: Defines a delegate class that handles specific tasks or views within the app. This could be a base class for other delegates.
* Interactions: May be extended by other delegate classes like breathworkExerciseDelegate.mc to provide common functionality.

`breathworkExerciseDelegate.mc`

* Description: Extends Ui.ViewLoopDelegate to manage the breathing exercise view. Handles the layout, user interactions, and exercise progression.
* Interactions: Uses Exercise.mc to manage the current exercise and interacts with the UI components defined in the layout resources.

`breathworkMenuDelegate.mc`

* Description: Manages the menu view of the app. Handles user interactions with the menu and navigation to other parts of the app.
* Interactions: Interacts with the main app class (breathworkApp.mc) to navigate between different views and delegates.

`breathworkView.mc`

* Description: Defines custom views or UI components used in the app. This could include custom drawing or interaction logic for the breathing exercises.
* Interactions: Used by breathworkExerciseDelegate.mc and other delegates to render custom UI components.

`developer_key`

* Description: Contains the developer key required for app deployment and testing on Garmin devices.
* Interactions: Used during the build and deployment process but not directly interacted with by the source code.

### How The Files Interact

1. Initialization: The app starts with breathworkApp.mc, which initializes the main application and sets up the initial view or delegate.
2. Menu Navigation: breathworkMenuDelegate.mc manages the menu view, allowing users to navigate to different parts of the app, such as starting a new exercise.
3. Exercise Management: When a user starts a breathing exercise, breathworkExerciseDelegate.mc takes over. It uses Exercise.mc to manage the exercise steps and duration.
4. UI Rendering: breathworkExerciseDelegate.mc and other delegates use breathworkView.mc to render custom UI components and handle user interactions.
5. Lifecycle Management: Throughout the app's lifecycle, various delegates manage their respective views and states, ensuring a smooth user experience.