class Recruitment < ApplicationRecord
    
    belongs_to :user
    
#   scope :search, -> (search_params) do
#       return if search_params.blank?
#        
#       rank(search_params[:rank])
#        mode(search_params[:mode])
#        want_chara_like(search_params[:want_chara])
#    end
    
#    scope :rank, -> (rank) { where('rank ?', "%#{rank}") if rank.present? }
end
