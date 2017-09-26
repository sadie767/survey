require('spec_helper')

describe(Taker) do
  describe('#answers') do
    it('will store multiple answers from test takers') do
      test_taker = Taker.create({:name => "Keegan"})
      test_answer1 = Answer.create({:answer => "2", :taker_id => test_taker.id})
      test_answer2 = Answer.create({:answer => "2", :taker_id => test_taker.id})
      expect(test_taker.answers()).to(eq([test_answer1, test_answer2]))
    end
  end
end
