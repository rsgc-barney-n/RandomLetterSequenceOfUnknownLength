import Cocoa

/*:

Your prior goal was to:

* generate a string, 20 characters long, with letters randomly selected
    * based on probability of each letter occuring in all (or at least most) English writing

However, this is not quite how a Markov Chain works.

A Markov chain makes selections based on an analysis of *only* the input text provided.

So, let's move to the next step.

Consider the text below. Re-execute the playground a few times.

*/

let input = getRandomSequence()

input

/*:

What do you notice about the input text each time you run the playground?

Your next step is to take what you have learned from prior playgrounds, and, write an algorithm in plain English that you think would accomplish this goal:

* determine the probability with which a given letter occurs in the input text
* build an output string that is 30 characters long
    * letters occur in the output string based on the proabability with which they occurred in the input string

*/

/*:

Here is the *first part* of the algorithm we built together in class:

![algorithm-part1](algorithm-part1.png "part1")

Here is the implementation:

*/
// Implement part one of the algorithm below

// create empty list of probabilities (dictionary)
var letterCounts = [Character: Int]()

// loop over the input string
for letter in input.characters {
    
    // inspect each character
    letter
    // build the dictionary (list) of letter counts
    if letterCounts[letter] == nil {
        letterCounts[letter] = 1        // first time for this letter!
    } else {
        // we KNOW this letter is in the dictionary. WE KNOW IT
        // ... so just add 1 to the current count
        letterCounts[letter]! = letterCounts[letter]! + 1
    }
    
}

// This is the dictionary we have built – it actually shows letter COUNTS, not probabilities – YET.
letterCounts

/*:

Here is the second part of the algorithm we built today:

![algorithm-part2](algorithm-part2.png "part2")

Here is the implementation:


*/

// Get the length of the input string
input.characters.count

// Create an empty dictionary to store probabilities
var letterProbabilities = [Character: Float]()

// Loop over the list of letter counts
for (letter, count) in letterCounts {
    
    // Add an entry to the probabilities dictionary
    letterProbabilities[letter] = Float(count) / Float(input.characters.count) * 100
}

letterProbabilities



