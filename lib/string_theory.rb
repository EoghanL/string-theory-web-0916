require 'byebug'
def sort_by_appearance(characters_to_sort, long_text)
  charArray = characters_to_sort.split('')
  finalArr = (long_text.split(''))
  finalArr.delete_if { |char| !charArray.include?(char) }
  finalArr = finalArr.group_by{|x| x}.sort_by{|k, v| -v.size}.map(&:first)
  charArray.each { |char| finalArr.push(char) if finalArr.include?(char) == false}
  byebug
  finalArr.join('')
end
