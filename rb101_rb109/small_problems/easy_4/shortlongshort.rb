# pseudo code

# get string1 & string2 as input
# find length of each string
# set long_str
# PRINT 'str' + long_str + 'str'

def short_long_short(str1, str2)
  if str1.size > str2.size
    long_str = str1
    short_str = str2
  else
    long_str = str2
    short_str = str1
  end
  puts short_str + long_str + short_str
end

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

# --------- alternate answer --------
# def short_long_short(str1, str2)
#   str1.size < str2.size ? str1 + str2 + str1 : str2 + str1 + str2
# end