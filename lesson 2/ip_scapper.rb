require "resolv"

def ip_scapper(str, ip_array)
  matches = str.scan(/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/);
  matches.each_with_index {|value, index| matches.delete(value) if !(value =~ Resolv::IPv4::Regex)}
  return matches & ip_array
end

p ip_scapper(
'root: 111.25.1.1\nlocal: 10.1.1.10',
['111.25.1.1', '10.1.1.10']
) # => ['111.25.1.1', '10.1.1.10']
 
p ip_scapper(
'root: 111.25.1.1\nlocal: 10.1.1.10',
['1.1.1.1']
) # => []
 
p ip_scapper(
'some fake 999.666.10.1 and real 233.100.1.100',
['999.666.10.1', '233.100.1.100']
) # => ['233.100.1.100']


