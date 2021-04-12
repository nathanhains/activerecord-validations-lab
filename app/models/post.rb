class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 10}
    validates :summary, length: {maximum: 10}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
    include ActiveModel::Validations
    validates_with TitleValidator
end
