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