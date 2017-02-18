class Reple < ActiveRecord::Base
    belongs_to :recip #중요! 리플이 속한게 레시피
end
