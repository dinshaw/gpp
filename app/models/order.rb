class Order < ActiveRecord::Base
  has_many :line_items
  belongs_to :user

  PAYMENT_TYPES = [ 
    # Displayed stored in db 
    [ "Check", "check" ], 
    [ "Credit card", "cc" ], 
    [ "Purchase order", "po" ],
    [ "Email", "email" ] 
  ]

  validates_inclusion_of :pay_type, :in => PAYMENT_TYPES.map {|disp, value| value} 

end
