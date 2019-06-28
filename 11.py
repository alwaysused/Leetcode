ass Solution(object):
        def maxArea(self, height):
                    """
                            :type height: List[int]
                                    :rtype: int
                                            """
                                                    length = len(height)
                                                            maxAr = 0
                                                                    l = 0
                                                                            r = length - 1
                                                                                    
                                                                                            while l < r:
                                                                                                            maxAr = max(maxAr, min(height[l], height[r]) * (r - l))
                                                                                                                        if height[l] < height[r]:
                                                                                                                                            l += 1
                                                                                                                                                        else:
                                                                                                                                                                            r -= 1
                                                                                                                                                                                    return maxAr
