#write your code here
def add a, b
    a + b
end

def subtract a, b
    a - b
end

def sum arr
    arr.reduce(0, :+)
end

def multiply *nums
    total = 1
    for num in nums do
        total *= num
    end
    total
end

def raises a, b
    a**b
end

def factorial(n)
    if n <= 1
        1
    else
        n * factorial(n-1)
    end
end