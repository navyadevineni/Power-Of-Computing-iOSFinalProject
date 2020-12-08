//
//  QuizViewViewController.swift
//  power_of_computing
//
//  Created by student on 11/21/20.
//  Copyright © 2020 Northwest. All rights reserved.
//

import UIKit

class QuizzViewController: UIViewController {

    
    @IBOutlet weak var questionCounterLBL : UILabel!
    //label for counting the questions in the quiz
    @IBOutlet weak var ScoreLBL: UILabel!
    //label for the score of the quiz
    @IBOutlet weak var imageViewOfTheWomen: UIImageView!
    //UI view for the image of the women in computing
    @IBOutlet weak var quizProgressBarView: UIView!
    // UI view for the progress of the quiz
    @IBOutlet weak var QuestionLBL: UILabel!
    // Label for the question
    
    // buttons for options
    
    @IBOutlet weak var optionABTN:UIButton!
    //Button for selecting the option A
    @IBOutlet weak var optionBBTN:UIButton!
    //Button for selecting the option B
    @IBOutlet weak var optionCBTN:UIButton!
    //Button for selecting the option C
    @IBOutlet weak var optionDBTN:UIButton!
    //Button for selecting the option D
    
    
    
    
    let listOfAllTheQuestionsInQuiz = QuestionBank()
    // constant for Question Bank class
        var questionNumber:Int = 0
    // question number on each question
        var scoreOfTheQuiz:Int = 0
    //score generated for written  quiz
    var selectedAnswerInTheQuiz:Int = 0
    // answer selected in the quiz
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            updateQuestion()
            updateUIOfTheQuiz()
    }
    
    /**
      Method for selecting options in the quiz
     */
    @IBAction func selectedOptions(_ sender:UIButton){
         
        if sender.tag == selectedAnswerInTheQuiz{
            print("correct")
            scoreOfTheQuiz += 1
        }else {
            print ("wrong")
        }
        questionNumber += 1
        updateQuestion()
        updateUIOfTheQuiz()
    }
    
    /*
     method for updating question
     */
    
    func updateQuestion(){
         if questionNumber <= listOfAllTheQuestionsInQuiz.list.count - 1 {
         //var  questionNumbers = Int(arc4random()) % listOfallQuestions.list.count
                
           imageViewOfTheWomen.image = UIImage(named: (listOfAllTheQuestionsInQuiz.list[questionNumber].questionImageInQuiz))
               QuestionLBL.text = listOfAllTheQuestionsInQuiz.list[questionNumber].questionInQuiz
                optionABTN.setTitle(listOfAllTheQuestionsInQuiz.list[questionNumber].optionASelectedInQuiz, for:UIControl.State.normal)
                optionBBTN.setTitle(listOfAllTheQuestionsInQuiz.list[questionNumber].optionBSelectedInQuiz, for:UIControl.State.normal)
                optionCBTN.setTitle(listOfAllTheQuestionsInQuiz.list[questionNumber].optionCSelectedInQuiz, for:UIControl.State.normal)
                optionDBTN.setTitle(listOfAllTheQuestionsInQuiz.list[questionNumber].optionDSelectedInQuiz, for:UIControl.State.normal)
                selectedAnswerInTheQuiz = listOfAllTheQuestionsInQuiz.list[questionNumber].correctAnswerSelectedInQuiz
                       
            }
            else
         {
            
                let alert = UIAlertController(title: "Bingo!!!!", message: "End of the Quiz 😃😄" + "\n" + "Your current Score is \(scoreOfTheQuiz) ", preferredStyle: .alert)
                
                let restartQuizAction = UIAlertAction(title: "Restart Quiz", style: .default, handler: {action in self.restartTheQuiz()})
                alert.addAction(restartQuizAction)
                present(alert,animated: true,completion: nil)
            }
           updateUIOfTheQuiz()
        }
        
       /*
         method for updating the UI while taking the quiz
       */
        func updateUIOfTheQuiz(){
            ScoreLBL.text = "Score : \(scoreOfTheQuiz)"
            questionCounterLBL.text = "\(questionNumber)/\(listOfAllTheQuestionsInQuiz.list.count)"
            //questionCounterLBL.text = "\(questionNumber )/\(listOfallQuestions.list.count)"
            quizProgressBarView.frame.size.width = (view.frame.size.width / CGFloat(listOfAllTheQuestionsInQuiz.list.count)) * CGFloat(questionNumber + 1)
        }
        
        /*
          Restarting the quiz
        */
        func restartTheQuiz(){
            scoreOfTheQuiz = 0
            questionNumber = 0
            updateQuestion()
        }
    }



