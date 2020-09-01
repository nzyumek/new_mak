class User < ApplicationRecord
  enum role: { 
    general: 1, 
    confirmable: 2,
    ob: 3,
    member: 4,
    shibuchou: 11,
    fuku_shibuchou: 12,
    gijutsu_sup: 21,
    gijutsu_hp: 27,
    gijutsu: 28,
    gijutsu_manager: 29,
    shougai_sup: 31,
    shougai: 38,
    shougai_manager: 39,
    accountant: 70,
    practise: 41,
    practise_manager: 42,
    editor: 51,
    editor_manager: 52,
    soumu: 61,
    soumu_manager: 62,
    kanjichou: 90,
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
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]
         
   attr_accessor :login
   
         
  validates :username, presence: true, uniqueness: { case_sensitive: false },  length: { minimum: 4, maximum: 20 }
  # Only allow letter, number, underscore and punctuation.
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true  , message: "ユーザー名は半角英数字です"

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
  
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["username = :value OR lower(email) = lower(:value)", { :value => login }]).first
    else
      where(conditions).first
    end
  end
  
  # scope :search, -> (search_params) do
  #   return if search_params.blank?

  #   name_like(search_params[:name])
  #     .gen_is(search_params[:gen])
  # end
  # scope :gen_is, -> (gen) { where(gen: gen) if gen.present? }
  
end
