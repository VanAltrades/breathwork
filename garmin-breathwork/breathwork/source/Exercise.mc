class Step {
    var type;
    var duration;

    function initialize(type as String, duration as Float) {
        self.type = type;
        self.duration = duration;
    }
}

class Exercise {
    var steps;

    function initialize() {
        steps = [];
    }

    function addStep(step as Step) {
        steps.add(step);
    }

    function getSteps() {
        return steps;
    }
}