class Display:
    def __init__(self, menu, exercise):
        self.menu = menu
        self.exercise = exercise
    
    def show_outline(self):
        self.exercise.outline()
    
    def run_exercise(self):
        self.exercise.run()

    def run_exercise_continuously(self):
        try:
            while True:
                self.run_exercise()
        except KeyboardInterrupt:
            print("\nExercise interrupted. Returning to menu.")
        
    def control_flow(self):
        while True:
            self.show_outline()
            choice = input("Press 'c' to continue to the exercise, 'r' to return to the menu, or 'q' to quit: ").strip().lower()
            if choice == 'c':
                self.run_exercise_continuously()
            elif choice == 'r':
                selected_exercise = self.menu.display()
                self.exercise = selected_exercise
            elif choice == 'q':
                print("Quitting.")
                return
            else:
                print("Invalid input. Please try again.")