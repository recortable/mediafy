
require 'singleton'

class Buckets
  attr_accessor :layout
  
  include Singleton

  def self.config
    yield Buckets.instance
  end

  def self.layout
    Buckets.instance.layout ? Buckets.instance.layout : 'buckets'
  end
end