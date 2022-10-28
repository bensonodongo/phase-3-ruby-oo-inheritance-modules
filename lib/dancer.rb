require_relative './dance_module'
require_relative './meta_dancing_module'
require_relative './fancy_dance'
require_relative './kid'

class Dancer
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods
  extend MetaDancing
    include Dance

  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
end