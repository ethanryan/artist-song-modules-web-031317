# module Memorable
#
#   def reset_all
#     self.all.clear
#   end
#
#   def count
#     self.all.count
#   end
#
# end

module Memorable

  module ClassMethods

    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end

  end #end module

  module InstanceMethods

    def initialize
      self.class.all << self
    end

  end #end module

end #end module
