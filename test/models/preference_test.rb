# == Schema Information
#
# Table name: preferences
#
#  id                         :integer          not null, primary key
#  about_megavision           :text
#  about_starnet              :text
#  company_history            :text
#  company_vision_missions    :text
#  addresses                  :text
#  copyright_text             :string
#  linked_in_url              :string
#  facebook_url               :string
#  twitter_url                :string
#  background_area_channel    :string
#  background_question_answer :string
#  background_history         :string
#  background_vision_mission  :string
#  background_vacancy         :string
#  background_contact         :string
#

require 'test_helper'

class PreferenceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
