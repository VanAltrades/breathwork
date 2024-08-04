using Toybox.WatchUi;
using Toybox.Lang;
using Toybox.Graphics;

class MenuView extends WatchUi.Menu2 {
    var exercises;

    function initialize(exercises) {
        var options = {
            :title => "Exercises"
        };
        Menu2.initialize(options);
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
        // ERROR: fr245m: C:\Users\vanal\Desktop\repositories\breathwork\garmin-breathwork\breathwork\source\MenuView.mc:26,8: Trying to call function '$.Toybox.WatchUi.pushView' with wrong number of arguments.
    }
}