class SearchPolicy < Struct.new(:user, :search)
  def show?
    true
  end
end
