// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$( document ).ready(function() {
  setEventListener();
});

function setEventListener() {
  $('.answer').on('click', function (e) {
    var $selectedAnswer = $(e.currentTarget);
    $selectedAnswer.addClass('answer-selected ');
    $selectedAnswer.find('i').removeClass('fa-square-o').addClass('fa-check-square-o');
    var question = $($selectedAnswer).data('question');
    $(question + ' .answer').unbind();
    var choice; 
    if ($selectedAnswer.attr('class').match(/tahra/)) {
      choice = 'tahra';
    } else if ($selectedAnswer.attr('class').match(/paul/)) {
      choice = 'paul';
    }
    quiz.verifier(question, choice);
  });
}

var quiz = {
  correctAnswers: 0,
  questionsAnswered: 0,
  correct: function () {  
    this.correctAnswers = this.correctAnswers + 1;
  },
  nextQuestion: function() {
    this.questionsAnswered = this.questionsAnswered + 1;
    if (this.questionsAnswered === 10) {
      $('span.quiz-score').text(this.correctAnswers);
      $('#submit-score').val(this.correctAnswers);
      $(".finished-quiz").removeClass('hidden');
      window.scrollTo(0,document.body.scrollHeight);
    }
  },
  tahra: ['.two', '.five', '.six', '.seven', '.ten'],
  paul: ['.one', '.three', '.four', '.eight', '.nine'],
  verifier: function (question, choice) {
    if ( this[choice].indexOf(question) >= 0) {
      this.correct();
    }
    this.nextQuestion();
  }
}