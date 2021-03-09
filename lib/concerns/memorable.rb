module Memorable

    module ClassMethods
    
        def reset_all
            all.clear
        end
    
        def count
            all.count
        end

        def find_by_name(name)
            self.all.detect {|a| a.name == name}
        end

    end

    module InstanceMethods

        def to_param
            self.name.downcase.gsub(' ', '-')
        end


    end

    






end