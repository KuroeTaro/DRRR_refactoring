local EPSILON=0.00001

function cmp(A,B)
    local delta = A - B
    if delta >= -EPSILON and delta <= EPSILON then
    	return 0
    elseif delta > 0 then
    	return 1
    else
    	return -1
    end
end

function is_equal(A,B)
    if cmp(A,B) == 0 then
        return true
    end
    return false
end

function is_great(A,B)
    if cmp(A,B) == 1 then
        return true
    end
    return false
end

function is_less(A,B)
    if cmp(A,B) == -1 then
        return true
    end
    return false
end