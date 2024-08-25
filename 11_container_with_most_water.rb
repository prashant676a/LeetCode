# @param {Integer[]} height
# @return {Integer}
def max_area(height)
    left = 0
    right = height.length - 1

    maxWater = 0
    while left < right
        width = right - left
        h = [height[left], height[right]].min
        water = width * h

        maxWater = [maxWater, water].max

        if height[left] < height[right]
            left= left+ 1
        else
            right= right-1
        end
    end
    maxWater
end
