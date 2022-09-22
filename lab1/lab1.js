function Singleton(arg) {
    return [arg]
}

function Null(arr) {
    if (!Array.isArray(arr)) {
        throw "Argument must be array";
    }
    if (!arr[0]){
        return true
    }
    return false;
}

function snoc(arr, el) {
    if (!Array.isArray(arr)) {
        throw "Argument must be array";
    }
    return [...arr, el]
}

function length(arr) {
    if (!Array.isArray(arr)) {
        throw "Argument must be array";
    }
    let i = 0;
    while (arr[i]) {
        i++;
    }
    return i
}

console.log(Singleton(5))
console.log(Null([]))
console.log(Null([1,2,3]))
let arr = [1,2]
console.log(snoc(arr,3), arr)
console.log(length([]))
console.log(length([1,2,3]))