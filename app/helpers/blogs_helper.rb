module BlogsHelper
  def generate_class(index)
    case index % 6
    when 0
      return 'is-primary'
    when 1
      return 'is-link'
    when 2
      return 'is-info'
    when 3
      return 'is-success'
    when 4
      return 'is-warning'
    when 5 
      return 'is-danger'
    end
  end
end
