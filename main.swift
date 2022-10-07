
func swap (integers:inout [String], firstIndex: Int, secondIndex: Int) {
    let temp = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = temp
    
}
var integers : [String] = []
while let line = readLine() {
    integers.append(line)
}
func sort () {
    var tempCount = 0
    var totalCount = 0
    var functionInvoke = true
    var unsortedArray = integers
    while(functionInvoke){
        for i in 0 ..< unsortedArray.count{
            for j in 1 ..< unsortedArray.count - i{
                if(unsortedArray[j] < unsortedArray[j-1]){
                    functionInvoke = true
                    tempCount += 1
                    totalCount += 1
                    swap(integers:&unsortedArray, firstIndex:j, secondIndex:j-1)
                }
            }

            if(tempCount == 0){
                functionInvoke = false
                break
            }
            tempCount = 0
        }
    }
}
sort()
