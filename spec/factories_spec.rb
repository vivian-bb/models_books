require 'rails_helper'

RSpec.describe "Book Factory" do 
    it "is valid" do
        expect(build(:book)).to be_valid
    end

    context "testing properties" do
        before(:all) do
          @book = build(:book)
        end

        it "has the correct author" do
             expect(@book.author).to eq "George Cockcroft"

        end

        it "has the correct title" do
            expect(@book.title).to eq "The Dice Man" 

        end

        it "has the correct genre" do
            expect(@book.genre).to eq "Drama"
        end

     end
end