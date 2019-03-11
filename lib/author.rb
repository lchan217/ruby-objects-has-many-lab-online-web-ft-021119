class Author 
  attr_accessor :name, :author
  attr_reader :posts
 
  def initialize(name)
    @name = name
    @posts = []
  end
 
  def posts
    @posts
  end  
  
  def add_post(new)
    new.author = self 
    @posts << new 
  end 
  def add_post_by_title(new_post)
    new = Post.new(new_post)
    new.author = self 
    @posts << new 
  end
  def self.post_count 
    Post.all.count
  end 
end 





