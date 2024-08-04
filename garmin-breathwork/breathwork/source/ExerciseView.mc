using Toybox.WatchUi;
using Toybox.System;
using Toybox.Lang; // For Number and String
using Toybox.Timer; // For Timer.Timer

class ExerciseView extends WatchUi.View {
    var exercise as Exercise;
    var currentStepIndex as Lang.Number;
    var timer as Timer.Timer;

    function initialize(exercise as Exercise) {
        View.initialize();
        self.exercise = exercise;
        self.currentStepIndex = 0;
        self.timer = new Timer.Timer();
    }

    function onShow() {
        self.runNextStep();
    }

    function onTimer() as Void {
        self.currentStepIndex += 1;
        self.runNextStep();
    }

    // function runNextStep() {
    //     if (self.currentStepIndex < self.exercise.steps.size()) {
    //         var step = self.exercise.steps[self.currentStepIndex];
    //         self.setText(step["action"] as Lang.String);
    //         self.timer.start(method(:onTimer), step["duration"] as Lang.Number * 1000, false);
    //     } else {
    //         self.setText("Exercise Complete");
    //     }
    // }

    function runNextStep() {
        if (self.currentStepIndex < (self.exercise.steps.size() as Lang.Number)) {
            var step = self.exercise.steps[self.currentStepIndex] as Lang.Dictionary;
            if (step != null) {
                var action = step["action"] as Lang.String;
                var duration = step["duration"] as Lang.Number;
                if (action != null && duration != null) {
                    self.setText(action);
                    self.timer.start(method(:onTimer), duration * 1000, false);                
                    } else {
                        // Handle the case where action or duration is null
                        self.setText("Invalid step data");
                }
            } else {
                // Handle the case where step is null
                self.setText("Invalid step data");
            }
        } else {
            self.setText("Exercise Complete");
        }
    }
    function onHide() {
        self.timer.stop();
    }

    function setText(text as Lang.String) {
        // Implement this method to update the display with the given text
    }
}