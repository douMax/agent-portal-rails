# == Schema Information
#
# Table name: documents
#
#  id          :integer          not null, primary key
#  title       :string
#  url         :text
#  img_preview :text
#  description :text
#  category    :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  docu_type   :integer
#

class Document < ApplicationRecord
  belongs_to :user, optional: true
  enum :category => {"brochure": 0, "collateral": 1, "floorplan": 2, "renders": 3, "specifications": 4}

end
