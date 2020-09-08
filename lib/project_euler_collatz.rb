def even_next(n)
    return n / 2
end

def odd_next(n)
    return (3 * n ) + 1
end

def next_value(n)
    if n % 2 == 0
        return even_next(n)
    else
        return odd_next(n)
    end
end

def collatz(n)
    result = [n]
    while n != 1
        n = next_value(n)
        result.push(n)
    end
    return result
end

def longest_collatz
	length = 0
	start = 0
	(500000..1000000).each do |num|
		current = collatz(num).length
		if (current > length)
			length = current
			start = num
		end
	end
	return start
end