class Audition < ActiveRecord::Base
    belongs_to :role

    def call_back
        Audition.update(id, hired: true)
    end
end