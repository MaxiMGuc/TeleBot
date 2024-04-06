'''def Sorted_List(st,list1,list2):
    stack = list1 + list2
    st = []
    x = 0
    while not stack:
        for i in stack:
            if x > int(stack[i]):
                x = int(stack[i])
        st.append(x)
        stack.pop(x)
    return st

    while (not list1) and (not list2):
        if int(list1[0]) > int(list2[0]):
            stack.append(list1[0])
            list1.pop(list1[0])
        else:
            stack.append(list2[0])
            list2.pop(list2[0])

list1 = [1,2,6]
list2 = [4,5]
stack = []
print(Sorted_List(stack,list1,list2))
'''



