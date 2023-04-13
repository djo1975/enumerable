# Create a module MyEnumerable
module MyEnumerable
  def all?
    each { |arg| return false unless yield(arg) }
    true
  end

  def any?
    each { |arg| return true if yield(arg) }
    false
  end

  def filter
    res = []
    each { |arg| res << arg if yield(arg) }
    res
  end
end
