require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.create!(title: "New Question Title", body: "New Question Body") }
  let(:answer) { Answer.create!(body: "Answer Body", question: question) }

  describe "attributes" do
    it "has a body" do
      expect(question).to have_attributes(body: "New Question Body")
    end
  end
end
