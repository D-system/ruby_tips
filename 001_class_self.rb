class Magazine
  def title
    p "Magazine.title"
  end
  def self.title
    p "Magazine::title (self)"
  end
end

Magazine::title                 # => Magazine::title (self)
Magazine.title                  # => Magazine::title (self)
Magazine.new.title              # => Magazine.title
