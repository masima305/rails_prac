class Recip < ActiveRecord::Base
    has_many :reples #중요! 레시피가 갖고 있는게 리플
end
