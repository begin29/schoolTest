module TestHelper
  def answers_for_question(test, question_id)
    test.answers.select{|ta| ta.answer_setting.question.id == question_id}
  end
end