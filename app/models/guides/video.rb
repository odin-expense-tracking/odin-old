# == Schema Information
#
# Table name: guides_videos
#
#  id         :bigint           not null, primary key
#  name       :string
#  video_link :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Guides::Video < ApplicationRecord
  has_rich_text :content
end
