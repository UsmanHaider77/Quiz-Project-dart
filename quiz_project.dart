
 
import 'dart:io';

void main(){
           
    print("Welcome To Quaiz Project");
    print("*************************");
    print("Please Select The Subject");
    print("1. English");
    print("2. Physics");
    print("3. General Knowledge");

    String userInput = stdin.readLineSync() as String;
      if (userInput == "1") {
         english();
      } else if(userInput == "2") {
        
      }else if(userInput == "3"){
         
      }else {
        print("Wrong Selestion");
      }

      print("Hope You Enjoy It..........");
      print("Thank You..........");
  }

                  //............Englis MCQs Start............

  english(){
      List<Map<String , dynamic>> questionEnglish = [
      {
        "Question" : "Frequently, Taylor ________ his breakfast in the bed.",
        "Options" : ["eat","eats","has eaten","is eating"],
        "Answer" : "eats"
      },
      {
        "Question" : "He eats very little and yet he is very healthy.little is?",
        "Options" : ["adjective","adverb","complement","object"],
        "Answer" : "adverb"
      },
      {
        "Question" : "Katherine is getting ________ the train.",
        "Options" : ["of","off","out of","out off"],
        "Answer" : "out of"
      },
      {
        "Question" : "I must get to the market before it ________.",
        "Options" : ["close","closes","closed","has closed"],
        "Answer" : "closes"
      },
      {
        "Question" : "One day people ________ to Moon.",
        "Options" : ["travel","traveled","will travel","will be traveling"],
        "Answer" : "will travel"
      },
      {
        "Question" : "Ali ________ gym this evening.",
        "Options" : ["will go","will goes","is going","is going to"],
        "Answer" : "is going to"
      },
      {
        "Question" : "They will not come here, ________?",
        "Options" : [" won’t they","won’t them","will they","will them"],
        "Answer" : "will them"
      },
      {
        "Question" : "The newly installed application sounds very ________.",
        "Options" : [" interest","interested","interestingly","interesting"],
        "Answer" : "interesting"
      }
    ];
      int score = 0;
      for (var i = 0; i < questionEnglish.length; i++) {
        Map<String,dynamic> question = questionEnglish[i];
        print("Question ${i +1} : ${question["Question"]}");

        for (var j = 0; j < question["Options"].length; j++) {
        print("${j+1}. ${question["Options"][j]}");
        }
        
        print("Enter Your Answer In Number (1-4)");
        int answer = int.parse(stdin.readLineSync()!);

        if (question["Options"][answer - 1]== question["Answer"]) {
          print("Your Answer Is Correct");
        score++;
        } else {
           print("Your Answer Is Not Correct");
        }
      }
      print("**********************");
       print("Your Score Is : $score/${questionEnglish.length}");
  }

                 //............Physics MCQs Start............
    
     physics(){
        List<Map<String , dynamic>> questionphysics = [
      {
        "Question" : "",
        "Options" : [""],
        "Answer" : ""
      },
      {
        "Question" : "",
        "Options" : [""],
        "Answer" : ""
      },
      {
        "Question" : "",
        "Options" : [""],
        "Answer" : ""
      },
      {
        "Question" : "",
        "Options" : [""],
        "Answer" : ""
      },
      {
        "Question" : "",
        "Options" : [""],
        "Answer" : ""
      },
      {
        "Question" : "",
        "Options" : [""],
        "Answer" : ""
      },
      {
        "Question" : "",
        "Options" : [""],
        "Answer" : ""
      },
      {
        "Question" : "",
        "Options" : [""],
        "Answer" : ""
      }
    ];

     }

                 //............General Knowledge............

      generalKnowledge(){}
