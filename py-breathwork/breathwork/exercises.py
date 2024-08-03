from breathwork.exercise import Exercise

class Exercises:
    
    def __init__(self):
        self.exercises = [self.anb, self.bc, self.bbt, self.cba, self.cbco, 
                          self.dtn, self.yb, self.bb, self.bbe, self.fseb]    
    
    anb = Exercise(
        "Alternate Nostril Breathing (Nadi Shodhana)", 
        [
            {"action": "Hold Thumb & Index Fingers to Nostrils", "duration": 2},
            {"action": "Inhale LEFT Nostril", "duration": 5},
            {"action": "Hold w/ BOTH Nostrils Closed", "duration": 2},
            {"action": "Exhale RIGHT Nostril", "duration": 5},
            {"action": "Hold w/ BOTH Nostrils Closed", "duration": 2},
            {"action": "Inhale RIGHT Nostril", "duration": 5},
            {"action": "Hold w/ BOTH Nostrils Closed", "duration": 2},
            {"action": "Exhale LEFT Nostril", "duration": 5},
        ],
        "Improves lung function, lowers heart rate, blood pressure, and stress."
    )
    bc = Exercise(
        "Breathing Coordination", 
        [
            {"action": "Inhale", "duration": 5},
            {"action": "Exhale by counting up to 10 repeatedly. Soften to whisper until lungs empty.", "duration": 20},
        ],
        "Engage diaghragm. Improve respiratory efficiency. Never forced - opt for calm. Spine should be straight. Chin perpendicular to body."
    )

    bbt = Exercise(
        "Control Pose - Buteyko Breathing Techniques", 
        [
            {"action": "Inhale", "duration": 5},
            {"action": "Exhale", "duration": 5},
            {"action": "Hold Thumb & Index Fingers to Nostrils", "duration": 2},      
            {"action": "Hold", "duration": 45},  
        ],
        "Diagnostic exercise to guage respiration. Hold breathe until 'air hunger'. Breathing should always be soft and controlled."
    )

    cba = Exercise(
        "Conscious Breathing - Anchor", 
        [
            {"action": "Inhale", "duration": 3},
            {"action": "Exhale", "duration": 6}, 
        ],
        "Boost CO2 tolerance rythmicly."
    )

    cbco = Exercise(
        "Conscious Breathing - CO2 Training", 
        [
            {"action": "Inhale", "duration": 3},
            {"action": "Exhale", "duration": 9}, 
        ],
        "Boost CO2 tolerance rythmicly. Longer exhalations increase CO2, which improves circulation."
    )

    dtn = Exercise(
        "Decongest the Nose", 
        [
            {"action": "Exhale - Pinch Nostrils Shut", "duration": 3},
            {"action": "Hold - Shake Head Up/Down, Side/Side", "duration": 10},
            {"action": "Inhale - Slowly", "duration": 3},          
        ],
        "Decongest the nose with calm breathing."
    )

    yb = Exercise(
        "Yogic Breathing", 
        [          
            # navel
            {"action": "Inhale to Navel", "duration": 5},          
            {"action": "Exhale from Navel", "duration": 5},
            {"action": "Inhale to Navel", "duration": 5},          
            {"action": "Exhale from Navel", "duration": 5},                  
            # ribs
            {"action": "Inhale to Ribcage", "duration": 5},          
            {"action": "Exhale from Ribcage", "duration": 5},      
            {"action": "Inhale to Ribcage", "duration": 5},          
            {"action": "Exhale from Ribcage", "duration": 5},                  
            # collarbone
            {"action": "Inhale to Collarbone", "duration": 5},          
            {"action": "Exhale from Collarbone", "duration": 5},
            {"action": "Inhale to Collarbone", "duration": 5},          
            {"action": "Exhale from Collarbone", "duration": 5},          
            # x 10
            {"action": "Inhale to Navel", "duration": 5},
            {"action": "Inhale to Ribcage", "duration": 5},
            {"action": "Inhale to Collarbone", "duration": 5},
            {"action": "Exhale from Collarbone", "duration": 5},                                                
            {"action": "Exhale from Ribcage", "duration": 5},
            {"action": "Exhale from Navel", "duration": 5},
            {"action": "Inhale to Navel", "duration": 5},
            {"action": "Inhale to Ribcage", "duration": 5},
            {"action": "Inhale to Collarbone", "duration": 5},
            {"action": "Exhale from Collarbone", "duration": 5},                                                
            {"action": "Exhale from Ribcage", "duration": 5},
            {"action": "Exhale from Navel", "duration": 5},        
        ],
        "Conscious breathing exercise. Sit crosslegged on the floor or upright in chair. Relax shoulders."
    )

    bb = Exercise(
        "Box Breathing", 
        [
            {"action": "Inhale", "duration": 4},
            {"action": "Hold", "duration": 4},
            {"action": "Exhale", "duration": 4},
            {"action": "Hold", "duration": 4},
        ],
        "For calm and focus in tense situations."
        )

    bbe = Exercise(
        "Box Breathing - Extended Exhalation", 
        [
            {"action": "Inhale", "duration": 4},
            {"action": "Hold", "duration": 4},
            {"action": "Exhale", "duration": 6},
            {"action": "Hold", "duration": 2},
        ],
        "For calm and focus in tense situations. Deeper relaxation technique. Useful before sleep."
        )

    fseb = Exercise(
        "4-7-8 Breathing", 
        [
            {"action": "Inhale via Nose", "duration": 4},
            {"action": "Hold", "duration": 7},
            {"action": "Exhale via Mouth 'woooosh' Sound", "duration": 8},
        ],
        "Places body into state of deep relaxation."
        )




