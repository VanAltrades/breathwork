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

    function getItem(index as Lang.Number) {
        return self.exercises[index].name;
    }

    function onSelect(index as Lang.Number) {
        var selectedExercise = self.exercises[index];
        WatchUi.pushView(new ExerciseView(selectedExercise), null, WatchUi.SLIDE_IMMEDIATE);
    }
}