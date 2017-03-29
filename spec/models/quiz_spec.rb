require 'rails_helper'

RSpec.describe Quiz, type: :model do
  it 'should be valid with name and score' do
    quiz = Quiz.new(name: 'hi', score: 9)
    expect(quiz).to be_valid
  end
  it 'should not be valid with out a name' do
    quiz = Quiz.new(score: 4)
    expect(quiz).to be_invalid
  end

  it 'shoud not be valid with score greater than 10' do
    quiz = Quiz.new(name: 'hi', score: 11)
    expect(quiz).to be_invalid
  end

  it 'can take a message' do
    quiz = Quiz.create(name: 'hi', score: 11, message: 'Paul!')
    expect(quiz.message).to eq('Paul!')
  end
end
