// import Toybox.Lang;
// import Toybox.System;
// import Toybox.WatchUi;

// class breathworkMenuDelegate extends WatchUi.MenuInputDelegate {

//     function initialize() {
//         MenuInputDelegate.initialize();
//     }

//     function onMenuItem(item as Symbol) as Void {
//         if (item == :item_1) {
//             System.println("item 1");
//         } else if (item == :item_2) {
//             System.println("item 2");
//         }
//     }

// }

import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;

class breathworkMenuDelegate extends WatchUi.MenuInputDelegate {
    var exercises;

    function initialize() {
        MenuInputDelegate.initialize();
        exercises = [];
        createExercises();
    }

    function createExercises() {
        var exercise1 = new Exercise();
        exercise1.addStep(new Step("inhale", 4));
        exercise1.addStep(new Step("hold", 2));
        exercise1.addStep(new Step("exhale", 4));
        exercise1.addStep(new Step("hold", 2));
        exercises.add(exercise1);

        var exercise2 = new Exercise();
        exercise2.addStep(new Step("inhale", 3));
        exercise2.addStep(new Step("hold", 3));
        exercise2.addStep(new Step("exhale", 3));
        exercise2.addStep(new Step("hold", 3));
        exercises.add(exercise2);

        // Add more exercises as needed
    }

    function onMenuItem(item as Symbol) as Void {
        if (item == :item_1) {
            System.println("item 1");
            startExercise(0);
        } else if (item == :item_2) {
            System.println("item 2");
            startExercise(1);
        }
    }

    function startExercise(index as Number) {
        var exerciseDelegate = new breathworkExerciseDelegate(exercises[index]);
        WatchUi.pushDelegate(exerciseDelegate);
    }
}