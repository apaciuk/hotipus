# == Schema Information
#
# Table name: posts
#
#  id                :uuid             not null, primary key
#  body(Post body)   :text             default(""), not null
#  title(Post title) :string(255)      default(""), not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
require 'rails_helper'

RSpec.describe Post, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
