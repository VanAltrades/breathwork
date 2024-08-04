using Toybox.Application;
using Toybox.WatchUi;

class App extends Application.AppBase {
    function initialize() {
        AppBase.initialize();
    }

    function onStart(state) {
        AppBase.onStart(state);
        
        var exercises = new Exercises();
        var menuView = new MenuView(exercises.exercises);
        WatchUi.pushView(menuView, null, WatchUi.SLIDE_IMMEDIATE);
    }
}