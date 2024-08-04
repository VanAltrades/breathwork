using Toybox.System;
using Toybox.WatchUi;
using Toybox.Lang; // Add this import


class Exercise {
    var name;
    var steps;
    var description;

    function initialize(name, steps, description) {
        self.name = name as Lang.String;
        self.steps = steps as Lang.Array;
        self.description = description as Lang.String;
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