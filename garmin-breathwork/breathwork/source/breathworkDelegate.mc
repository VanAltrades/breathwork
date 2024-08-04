// Define the delegate for the main menu

// import Toybox.Lang;
// import Toybox.WatchUi;

// class breathworkDelegate extends WatchUi.BehaviorDelegate {

//     function initialize() {
//         BehaviorDelegate.initialize();
//     }

//     function onMenu() as Boolean {
//         WatchUi.pushView(new Rez.Menus.MainMenu(), new breathworkMenuDelegate(), WatchUi.SLIDE_UP);
//         return true;
//     }

// }

using Toybox.WatchUi as Ui;
using Toybox.Lang as Lang;

class breathworkDelegate extends Ui.MenuDelegate {
    function initialize() {
        MenuDelegate.initialize();
    }

    function getTitle() {
        return Lang.translate("menu_title");
    }

    function getItemCount() {
        return 2; // Update this count based on the number of exercises
    }

    function getItem(index) {
        if (index == 0) {
            return Lang.translate("exercise_1");
        } else if (index == 1) {
            return Lang.translate("exercise_2");
        }
        return "";
    }

    function onSelect(index) {
        var exerciseDelegate = new breathworkExerciseDelegate(index);
        Ui.pushDelegate(exerciseDelegate);
    }
}