```text
count = 0
maxCount = 0

for each num in nums:
    if num == 1:
        count++
        maxCount = max(maxCount, count)
    else:
        count = 0

return maxCount
```