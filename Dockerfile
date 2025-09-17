FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3 && rm -rf /var/lib/apt/lists/*

CMD ["python3", "-c", "\
def isHappy(n):\n\
    happy = set()\n\
    while True:\n\
        if n == 1:\n\
            return True\n\
        if n in happy:\n\
            return False\n\
        happy.add(n)\n\
        n_list = []\n\
        n_string = str(n)\n\
        for ch in n_string:\n\
            n_list.append(ch)\n\
        sum_count = 0\n\
        for i in range(len(n_list)):\n\
            sum_count = sum_count + int(n_list[i])**2\n\
        n = sum_count\n\
\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
"]
