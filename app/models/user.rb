class User < ApplicationRecord
  enum role: { 
    general: 1, 
    ob: 2,
    shibuchou: 11,
    fuku_shibuchou: 12,
    gijutsu_sup: 21,
    gijutsu: 28,
    gijutsu_manager: 29,
    shougai_sup: 31,
    shougai: 38,
    shougai_manager: 39,
    accountant: 90,
    practise: 41,
    practise_manager: 42,
    editor: 51,
    editor_manager: 52,
    soumu: 61,
    soumu_manager: 62,
    fuku_kan_edi: 91,
    fuku_kan_gi: 92,
    fuku_kan_pra: 93,
    fuku_kan_sho: 94,
    fuku_kan_so: 95,
    fuku_kan: 98,
    admin: 99 }
  
    
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
  
  has_one_attached :image
  
  # scope :search, -> (search_params) do
  #   return if search_params.blank?

  #   name_like(search_params[:name])
  #     .gen_is(search_params[:gen])
  # end
  # scope :gen_is, -> (gen) { where(gen: gen) if gen.present? }
  
end
