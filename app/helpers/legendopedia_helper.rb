module LegendopediaHelper

  def join_names_attr_with_comma(hash)
    hash.map { |x| x[:name]}.join(', ')
  end
end