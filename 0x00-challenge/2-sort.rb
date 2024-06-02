###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i
    
    # insert result at the right position
    is_inserted = false
    i = 0
    l = result.size
    #index = 0
    while !is_inserted && i < l do
        #test = "result: " + result[i].to_s + "     i: " +i.to_s + "    ith: " + i_arg.to_s + "  " + result.to_s+"\nIteration: " + index.to_s
        #index += 1 
        #puts test
        if result[i] <= i_arg
            i += 1
        else
            result.insert(i, i_arg)
            is_inserted = true
            break
        end
    end
    result << i_arg if !is_inserted
end

puts result
