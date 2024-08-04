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