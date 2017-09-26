require("spec_helper")

describe(Answer) do

  describe ("#question") do
    it("tells which question it belongs to") do
      test_question = Question.create({:question => "question"})
      test_answer = Answer.create({:answer => "2", :question_id => test_question.id})
      expect(test_answer.question()).to(eq(test_question))
    end
  end
  describe ("#taker") do
    it("shows the test takers answer") do
      test_taker = Taker.create({:name => "Rebecca"})
      test_answer = Answer.create({:answer => "2", :taker_id => test_taker.id})
      expect(test_answer.taker()).to(eq(test_taker))
    end
  end

end
