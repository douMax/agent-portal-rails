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
  enum :category => [:collateral, :brochure, :contract_of_sale, :floorplan, :renders, :specifications]

end
