from tqdm import tqdm
import time
from texttable import Texttable

class Exercise:
    def __init__(self, name, steps, info):
        self.name = name
        self.steps = steps
        self.info = info
    
    def outline(self):
        print(f"Exercise: {self.name}")
        print(f"{self.info}")
        table = Texttable()
        table.header(["Action", "Duration (seconds)"])
        for step in self.steps:
            action = step['action']
            duration = step['duration']
            table.add_row([action, duration])
        
        print(table.draw())
        
    
    def run(self):
        for step in self.steps:
            action = step['action']
            duration = step['duration']
            print(f"{action} for {duration} seconds")
                    
            with tqdm(total=duration, bar_format='{l_bar}{bar}| {n_fmt}/{total_fmt} sec', ncols=50) as pbar:
                for sec in range(duration):
                    time.sleep(1)
                    pbar.update(1)