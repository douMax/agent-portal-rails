# == Schema Information
#
# Table name: lots
#
#  id          :integer          not null, primary key
#  lot_no      :string
#  beds        :integer
#  baths       :integer
#  carpots     :integer
#  in_sqm      :decimal(10, 2)
#  out_sqm     :decimal(10, 2)
#  total_sqm   :decimal(10, 2)
#  floor_level :string
#  plan_url    :text
#  description :text
#  status      :integer
#  price       :decimal(10, 2)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  project_id  :integer
#  room_type   :string
#  room_dir    :string
#

class Lot < ApplicationRecord
  belongs_to :project

  enum :status => [:open, :sold, :eoi, :contract_drafted, :under_contract, :unconditionall]
end
