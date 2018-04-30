class Account < ApplicationRecord

  enum status: [:created, :active, :disabled]
  
  has_one :owner, class_name: 'User'
  has_many :users

  before_save :compress_name, if: :new_record?
  before_save :set_account_status, if: :new_record?

  validates :owner, presence: true
  validates :name, presence: true

  accepts_nested_attributes_for :owner

private

  def compress_name
    self.comp_name = name.gsub(/\s+/, "").downcase
  end

  def set_account_status
    self.acc_status = "created"
  end

end
