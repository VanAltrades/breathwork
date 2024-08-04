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

To create a Garmin Connect IQ app that meets your requirements, you need to follow these steps:

1. **Define the Exercise Class**: This class will store the exercise details.
2. **Create a Menu Screen**: This screen will list all the exercises.
3. **Handle Exercise Selection**: Allow the user to select an exercise.
4. **Run the Exercise**: Perform each action for the given duration in a loop until the user stops.

### Step-by-Step Plan:

1. **Define the Exercise Class**:
    - Store the name, steps, and description of each exercise.

2. **Create the Menu Screen**:
    - Use a `Menu2` class to list all exercises.
    - Handle user selection to navigate to the exercise screen.

3. **Handle Exercise Selection**:
    - Pass the selected exercise to the exercise screen.

4. **Run the Exercise**:
    - Display each action and wait for the specified duration.
    - Allow the user to stop the exercise.

### Monkey C Code:

#### Exercise.mc

```monkeyc
using Toybox.System;
using Toybox.WatchUi;
using Toybox.Lang;

class Exercise {
    var name;
    var steps;
    var description;

    function initialize(name, steps, description) {
        self.name = name;
        self.steps = steps;
        self.description = description;
    }
}

class Exercises {
    var exercises;

    function initialize() {
        self.exercises = [
            self.createAnb(),
            self.createBc()
            // Add other exercises here
        ];
    }

    function createAnb() {
        return new Exercise(
            "Alternate Nostril Breathing (Nadi Shodhana)",
            [
                {"action" => "Hold Thumb & Index Fingers to Nostrils", "duration" => 2},
                {"action" => "Inhale LEFT Nostril", "duration" => 5},
                {"action" => "Hold w/ BOTH Nostrils Closed", "duration" => 2},
                {"action" => "Exhale RIGHT Nostril", "duration" => 5},
                {"action" => "Hold w/ BOTH Nostrils Closed", "duration" => 2},
                {"action" => "Inhale RIGHT Nostril", "duration" => 5},
                {"action" => "Hold w/ BOTH Nostrils Closed", "duration" => 2},
                {"action" => "Exhale LEFT Nostril", "duration" => 5}
            ],
            "Improves lung function, lowers heart rate, blood pressure, and stress."
        );
    }

    function createBc() {
        return new Exercise(
            "Breathing Coordination",
            [
                {"action" => "Inhale", "duration" => 5},
                {"action" => "Exhale by counting up to 10 repeatedly. Soften to whisper until lungs empty.", "duration" => 20}
            ],
            "Engage diaphragm. Improve respiratory efficiency. Never forced - opt for calm. Spine should be straight. Chin perpendicular to body."
        );
    }
}
```

#### MenuView.mc

```monkeyc
using Toybox.WatchUi;
using Toybox.Lang;

class MenuView extends WatchUi.Menu2 {
    var exercises;

    function initialize(exercises) {
        Menu2.initialize();
        self.exercises = exercises;
    }

    function getItemCount() {
        return self.exercises.size();
    }

    function getItem(index) {
        return self.exercises[index].name;
    }

    function onSelect(index) {
        var selectedExercise = self.exercises[index];
        WatchUi.pushView(new ExerciseView(selectedExercise), WatchUi.SLIDE_IMMEDIATE);
    }
}
```

#### ExerciseView.mc

```monkeyc
using Toybox.WatchUi;
using Toybox.System;
using Toybox.Lang;

class ExerciseView extends WatchUi.View {
    var exercise;
    var currentStepIndex;
    var timer;

    function initialize(exercise) {
        View.initialize();
        self.exercise = exercise;
        self.currentStepIndex = 0;
        self.timer = new Timer.Timer();
    }

    function onShow() {
        self.runNextStep();
    }

    function runNextStep() {
        if (self.currentStepIndex < self.exercise.steps.size()) {
            var step = self.exercise.steps[self.currentStepIndex];
            self.setText(step["action"]);
            self.timer.start(step["duration"] * 1000, method(:onTimer));
        } else {
            self.setText("Exercise Complete");
        }
    }

    function onTimer() {
        self.currentStepIndex += 1;
        self.runNextStep();
    }

    function onHide() {
        self.timer.stop();
    }

    function setText(text) {
        // Implement this method to update the display with the given text
    }
}
```

#### App.mc

```monkeyc
using Toybox.Application;
using Toybox.WatchUi;

class App extends Application.AppBase {
    function initialize() {
        AppBase.initialize();
    }

    function onStart() {
        var exercises = new Exercises();
        var menuView = new MenuView(exercises.exercises);
        WatchUi.pushView(menuView, WatchUi.SLIDE_IMMEDIATE);
    }
}
```

### Explanation:

1. **Exercise Class**: Stores the name, steps, and description of each exercise.
2. **Exercises Class**: Initializes a list of exercises.
3. **MenuView Class**: Displays a list of exercises and handles user selection.
4. **ExerciseView Class**: Runs the selected exercise, displaying each action for the specified duration.
5. **App Class**: Initializes the app and displays the menu view.