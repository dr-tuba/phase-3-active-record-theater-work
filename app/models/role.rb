class Role < ActiveRecord::Base
    has_many :auditions

    def actors 
       auditions.pluck(:actor)
    end 

    def locations
        auditions.pluck(:location)
    end

    def lead 
        auditions.detect{ |aud| aud.hired? } || "No actor/actress has been hired for this role"
    end

    def understudy
        auditions.select{ |aud| aud.hired? }.second || "No actor/actress has been hired for this role"
    end
end