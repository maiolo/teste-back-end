class Contact < ApplicationRecord

  validates :email, uniqueness: true, format: { with: /\A(\S*)@(\w*)(\.\w*\.?\w*)\z/, message: "Use a valid e-mail"}
end
