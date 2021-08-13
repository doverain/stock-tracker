
class Stock < ApplicationRecord
	belongs_to :user
	validates :ticker, presence: { message: "Please enter a valid stock ticker symbol." }
end
