class Document < ApplicationRecord
  belongs_to :user, optional: true
  enum :category => {"brochure": 0, "collateral": 1, "floorplan": 2, "renders": 3, "specifications": 4}

end
