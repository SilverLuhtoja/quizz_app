# quizz_app

HAVE TO HAVE:
* 6 categories and 10 question each
* When clicking on category, it shows this category picture, question and true/false buttons 
* When all 10 question are answered then I have to show score about correct answers and backToMainMenu button 
  - Bonus\
    Add a timer to each question, so the user must answer a question in a fixed time.
    After time is up, question should be marked as answered incorrectly and omitted.
  
GamePlan:
1. Make Landing Page where the categories will be shown (Categories.map((e) => CategoryCard(e))
2. Action to root to different Page when some category is pushed (/games or /world, so basic http requests with flutter)
3. Mock Data to simulate question page (classes) , adding timer ???