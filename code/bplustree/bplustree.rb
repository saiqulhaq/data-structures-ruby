require_relative 'node' 

class Bplustree
  
  def initialize bfactor
    @bfactor = bfactor
  end

  def empty?
    @root.nil?
  end

  def to_s
    "bfactor=#{@bfactor},root=#{root}"
  end
  
  def get key 
    @root.get key
  end  
  
  def insert key, value
    unless @root
      @root = Node.new(@bfactor, is_leaf: false, is_root: true)
    end
    @root.insert key,value
  end

end
  