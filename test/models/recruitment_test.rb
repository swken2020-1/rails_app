require 'test_helper'

class RecruitmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'Recmodelが空の時' do
    recruitment = Recruitment.new
    assert_not recruitment.save
  end
  
  test "プレイスタイルがnilの時" do
    recruitment = Recruitment.new(mode: "ランクマ", rank: "無制限", use_chara: "レイス", need_chara: "パスファインダー", play_style: nil, flag: 1 )
    assert_not recruitment.save
  end
  
  test "要求ランクがnilの時" do
    recruitment = Recruitment.new(mode: "ランクマ", rank: nil, use_chara: "レイス", need_chara: "パスファインダー", play_style: "hoge", flag: 1 )
    assert_not recruitment.save
  end
  
end
