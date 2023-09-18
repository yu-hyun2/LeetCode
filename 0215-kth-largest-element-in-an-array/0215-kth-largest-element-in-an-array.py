import heapq

class Solution:
    def findKthLargest(self, nums: List[int], k: int) -> int:
        # 리스트의 첫 k개 요소를 최소 힙으로 변환
        min_heap = nums[:k]
        heapq.heapify(min_heap)
        
        # 나머지 요소를 순회하면서 힙에 추가하고, 최소값을 유지
        for num in nums[k:]:
            if num > min_heap[0]:
                heapq.heappop(min_heap)
                heapq.heappush(min_heap, num)
        
        # 힙의 최상단 요소는 k번째로 큰 요소
        return min_heap[0]