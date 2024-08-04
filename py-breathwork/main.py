from breathwork.menu import Menu
# from breathwork.exercise import Exercise
from breathwork.exercises import Exercises
from breathwork.display import Display

exercises = Exercises().exercises


menu = Menu(exercises) # Create a menu and select an exercise
selected_exercise = menu.display() # print menu of exercises and return selected exercise 

display = Display(menu, selected_exercise) # Display the selected exercise routine
display.control_flow() # continue to exercise, return to menu, or quit