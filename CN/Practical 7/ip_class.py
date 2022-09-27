string = input("IP address: ")

def get_ip():
    for i in range(len(string)):
        if string[i]=='.':
            break
    return int(string[:i])

def find_class():
    itr_ip = get_ip()
    if itr_ip>=0 and itr_ip<=127:
        print("Class A IP Address")
        return 1
    if itr_ip>=128 and itr_ip<=191:
        print("Class B IP Address")
        return 2
    if itr_ip>=192 and itr_ip<=223:
        print("Class C IP Address")
        return 3
    if itr_ip>=224 and itr_ip<=240:
        print("Class D IP Address")
        return 4
    if itr_ip>=241 and itr_ip<=255:
        print("Class E IP Address")
        return 5

def find_host_net_id():
    class_id = find_class()
    if class_id>3:
        host_id = "Not availabel"
        net_id = "Not availabel"
    else:
        temp_str = string.split(".",class_id)
        net_id = ".".join(temp_str[:class_id])
        host_id = ".".join(temp_str[class_id:])
    print("Net Id: {}".format(net_id))
    print("Host Id: {}".format(host_id))

find_host_net_id()