class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  # Only allow letter, number, underscore and punctuation.
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true       
    validates :email, presence: true, uniqueness: { case_sensitive: false }
    validates :bachelor, presence: true
    validates :major, presence: true
    validates :lastn, presence: true
    validates :firstn, presence: true
    validates :h_lastn, presence: true
    validates :h_firstn, presence: true
    validates :gen, presence: true
    validates :studno, presence: true
  
end
