require 'rails_helper'

RSpec.describe Book, type: :model do
 context "Validations" do
     it "should not be valid without a title" do
     book = build(:book, title: nil)
     expect(book).to_not be_valid
    end

     it "should not be valid without a title" do
     book = build(:book, genre: nil)
     expect(book).to_not be_valid
    end

     it "should not be valid without a title" do
     book = build(:book, date_written: nil)
     expect(book).to_not be_valid
    end

 end

    describe ".age" do
      it "should return an integer" do  
      book = build(:book)
      expect(book.age).to be_a Integer  
      end

      it "should return the right age" do  
      book = build(:book, date_written: 5.years.ago)
      expect(book.age).to eq(5)
      end
    end
  
end