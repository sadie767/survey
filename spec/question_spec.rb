require('spec_helper')

describe(Question) do
  describe('#answers') do
    it('tells which answer belongs to the question') do
      test_question = Question.create({:question => "string"})
      test_answer = Answer.create({:answer => 2, :question_id => test_question.id})
      test_answer2 = Answer.create({:answer => 2, :question_id => test_question.id})
      expect(test_question.answers()).to(eq([test_answer, test_answer2]))
    end
  end
end
