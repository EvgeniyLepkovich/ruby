def sanitize_password(str)
  str_array = str.gsub(/\"/, '').split(/\\n|\n/, -1)
  str_array.each_with_index do |s, i| 
    old_size = s.size
    s += '*' * (old_size - s.size) if s.gsub!(/(?<=password:).+/, '') != nil
    str_array[i] = s
  end
  return str_array.join('\n')
end

p sanitize_password('server:\nuser:root\npassword:!@$#@\nhost:localhost')
p sanitize_password(
  '2017-04-14 09:14:02.5 ubuntu-yakkety[13310] password: "hello"
  Warning - Agent failed to register with core!
  password:admin')