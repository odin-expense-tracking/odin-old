# == Schema Information
#
# Table name: guides_texts
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Guides::Text < ApplicationRecord
  belongs_to :user

  has_rich_text :content
end
