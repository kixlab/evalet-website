class String
  # Ruby 3.2 removed Object#untaint, but older versions of Liquid/Jekyll
  # still call it. Provide a no-op implementation so builds succeed.
  def untaint
    self
  end
end

