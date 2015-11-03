import Foundation

public func getRandomSequence() -> String {
    
    // Create an empty dictionary with a key of type String and a value of type Float
    var letterFrequency = [String: Float]()
    
    // Add the frequency for A, B, and C
    letterFrequency["A"] = 8.167
    letterFrequency["B"] = 1.492
    letterFrequency["C"] = 2.782
    letterFrequency["D"] = 4.253
    letterFrequency["E"] = 12.702
    letterFrequency["F"] = 2.228
    letterFrequency["G"] = 2.015
    letterFrequency["H"] = 6.094
    letterFrequency["I"] = 6.966
    letterFrequency["J"] = 0.153
    letterFrequency["K"] = 0.772
    letterFrequency["L"] = 4.025
    letterFrequency["M"] = 2.406
    letterFrequency["N"] = 6.749
    letterFrequency["O"] = 7.507
    letterFrequency["P"] = 1.929
    letterFrequency["Q"] = 0.095
    letterFrequency["R"] = 5.987
    letterFrequency["S"] = 6.327
    letterFrequency["T"] = 9.056
    letterFrequency["U"] = 2.758
    letterFrequency["V"] = 0.978
    letterFrequency["W"] = 2.361
    letterFrequency["X"] = 0.150
    letterFrequency["Y"] = 1.974
    letterFrequency["Z"] = 0.074
    
    // Creating a place to store the letter sequence
    var letterSequence = ""
    
    // Decide how many letters to add to the sequence
    let sequenceLength = arc4random_uniform(100) + 50
    
    // Loop to create a 20 character string
    for _ in 1...sequenceLength {
        
        // Select random number
        let randomValue = Float(arc4random_uniform(100000)) / 1000
        
        // Variables to track the boundaries for probability
        // of a letter occuring
        var upperValue:Float = 0.0
        
        // Loop over all the letters in the dictionary
        for (letter, probability) in letterFrequency {
            
            // Determine upper boundary value for current letter
            upperValue += probability
            
            // When the random value is below the upper value
            if (randomValue < upperValue)
            {
                letterSequence += letter
                
                break   // stop the loop
                
            }
            
        }
        
    }
    
    // Show the resulting letter sequence
    return letterSequence
}