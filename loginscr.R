#log in 
new_user <- function(){
  user_name <- readline("Please enter the username assigned by your instructor:")
  pass_word <- readline("Please enter a user password:")
  
  ques_no <- sample(1:4, 1)
  ques_selected <- readline(paste("Security Question:",security_ques[ques_no]))
  student_info = c(user_name,pass_word,ques_no,ques_selected)
  return(student_info)
  
}

log_in <- function(){
  repeat{
  check_user <- readline("Please enter your username:")
  if(check_user == 'cats'){ break; } }
  repeat{
    check_passwrd <- readline("Please enter password:")
    if(check_passwrd == 'dog'){ 
      return(TRUE)
      break; }
     else {
      print("Password incorrect. Try again...")
    }
  }
}
  

security_ques = c("What is your ECSU ID Number? ","What is the name of your hometown? ",
                  "Paper or Plastic? ","What is your Mom's name? ")
response = 0 

repeat{
response <- readline("Are you a new user? \n  1: New User \n 2: Current User\n")

if(response == 1 | response == 2){
  break;
  }
}

if(response == 1){
   new_user()
} else if(response == 2){
  if(log_in() == TRUE){
    print("Welcome!")
  }
} 

