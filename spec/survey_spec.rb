require("spec_helper")

describe(Survey) do

  describe("#questions") do
    it ("tells what questions are on the survey") do
      test_survey = Survey.create({:title => "title", :author => "Keegan"})
      test_question1 = Question.create({:question => "question1", :survey_id => test_survey.id})
      test_question2 = Question.create ({:question => "question2", :survey_id => test_survey.id})
      expect(test_survey.questions()).to(eq([test_question1, test_question2]))
    end
  end

  describe("#takers") do
    it ("tells what takers are on the survey") do
      test_survey = Survey.create({:title => "title", :author => "Keegan"})
      test_taker1 = Taker.create({:name => "taker1", :survey_id => test_survey.id})
      test_taker2 = Taker.create ({:name => "taker2", :survey_id => test_survey.id})
      expect(test_survey.takers()).to(eq([test_taker1, test_taker2]))
    end
  end
end
