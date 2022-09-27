class Role < ActiveRecord::Base
    has_many :auditions

    #Role#actors returns an array of names from the actors associated with this role

    # def actors
    #     list_actor = []
    #     auditions.each do |aud|
    #        list_actor << aud.actor
    #     #    list_actor.push(aud.actor)
    #     end
    #     list_actor
    # end

    # def actors 
    #     auditions.map { |aud| aud.actor }
    # end

    def actors 
        auditions.pluck(:actor)
    end

# Role#locations returns an array of locations from the auditions associated with this role

    def locations 
        auditions.map { |aud| aud.location }
    end

# Role#lead returns the first instance of the audition that was hired for this role or returns a string 'no actor has been hired for this role'

    def lead 
        auditions.find_by(hired: true) ||'no actor has been hired for this role'
    end

    # def lead      
    #     if auditions.where(hired: true).length > 0
    #         auditions.where(hired: true).first
    #         # auditions.hwere(hire: true)[0]
    #     else
    #         'no actor has been hired for this role'
    #     end
    # end


    # def understudy
    #     if auditions.where(hired: true).length > 1
    #         auditions.where(hired: true).second
    #         # auditions.hwere(hire: true)[0]
    #     else
    #         'no actor has been hired for this role'
    #     end
    # end

    def understudy 
        auditions.where(hired: true).second || 'no actor has been hired for this role'
    end

# Role#understudy returns the second instance of the audition that was hired for this role or returns a string 'no actor has been hired for understudy for this role'


end