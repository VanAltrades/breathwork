from texttable import Texttable  # type: ignore

class Menu:
    def __init__(self, exercises):
        self.exercises = exercises
    
    def display(self):
        table = Texttable()
        table.header(["Number", "Exercise"])
        
        for idx, exercise in enumerate(self.exercises):
            table.add_row([idx + 1, exercise.name])
        
        print(table.draw())
        
        choice = int(input("Enter the number of the exercise: ")) - 1
        return self.exercises[choice]