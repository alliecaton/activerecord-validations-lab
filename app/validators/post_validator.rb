require 'pry'
class PostValidator < ActiveModel::Validator

      def validate(record)
        
        if record.title && (record.title.include?("Won't Believe") || 
                record.title.include?("Guess") ||
                record.title.include?("Secret") ||
                record.title.include?("Top #{[0..9].find}"))
        else
                record.errors[:title] << "Is not clickbait."
        end
      end

end