class Inquiry < ApplicationRecord
    include ActiveModel::Model
    enum select: {仮入会希望: 1, 質問・相談: 2, 仕事依頼: 3, その他: 4}
    
  attr_accessor :name, :email, :message, :select
  
  validates :select,  :presence => {:message => 'ご用件を入力してください'}
  validates :name, :presence => {:message => '名前を入力してください'}
  validates :email, :presence => {:message => 'メールアドレスを入力してください'}    
  validates :message, :presence => {:message => 'お問い合わせ内容を入力してください'}  
  
    
end
