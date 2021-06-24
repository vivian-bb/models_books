class Book < ApplicationRecord
    validates :title, presence: true
    validates :genre, presence: true
    validates :date_written, presence: true


   def age  
       ((Time.now - self.date_written.to_time) / 1.year.seconds).floor
    end

end