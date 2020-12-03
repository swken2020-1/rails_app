class Recruitment < ApplicationRecord
    
    belongs_to :user
    
    validates :rank,    length: { maximum: 15 }, presence: true
    validates :play_style,    length: { maximum: 15 }, presence: true
    
#   scope :search, -> (search_params) do
#       return if search_params.blank?
#        
#       rank(search_params[:rank])
#        mode(search_params[:mode])
#        want_chara_like(search_params[:want_chara])
#    end
    
#    scope :rank, -> (rank) { where('rank ?', "%#{rank}") if rank.present? }
end
