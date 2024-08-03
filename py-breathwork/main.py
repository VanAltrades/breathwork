from breathwork.menu import Menu
# from breathwork.exercise import Exercise
from breathwork.exercises import Exercises
from breathwork.display import Display

exercises = Exercises().exercises

# Create a menu and select an exercise
menu = Menu(exercises)
selected_exercise = menu.display() # print menu of exercises and return selected exercise 

# Display the selected exercise routine
display = Display(menu, selected_exercise)
display.control_flow()