class Album < ActiveRecord::Base
    validates_numericality_of :rating
    validate :near_year
    validates_format_of :image_url,
                        :with => %r{\.(gif|jpg|jpeg|png)$}i,
                        :message => 'tiene que ser formato GIF, JPG '+
                            'JPEG o PNG.'
 
   
protected
    def near_year
        if !year.nil?
            validates_numericality_of :year
            errors.add(:year, 'el año tiene que ser maaaso reciente') if !year.nil? year < 1940 ||
            year > Time.now.year
        end
    end
end
