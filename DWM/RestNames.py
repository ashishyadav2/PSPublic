import random,requests
from bs4 import BeautifulSoup
request = requests.get('https://en.wikipedia.org/wiki/List_of_Indian_dishes#North_India')
soup = BeautifulSoup(request.content,'html.parser')
# food_items = ['Chole Bhature','Biryani','Paneer','Dosa','Obbattu','Paneer','Biryani','Paneer','Dosa','Obbattu']
db_name = "TIME_DIM"
# food_item_id = random.randrange(1000,9999)
# qauntity = random.randrange(1,9)
# price = random.randrange(10,99)
# for i in range(10):
#     print("INSERT INTO {} VALUES('{}','{}',{},{}0);".format(db_name,random.randrange(1000,9999),food_items[i],random.randrange(1,9),random.randrange(10,99)))

# random.randrange(1,12)
# random.randrange(2018,2021)
# cust_name = ['Todd Curtis','Elizabeth Perez','Matthew Lyons','Darlene Anderson','Cheryl Glenn','Tamara Brown','Thomas Mclaughlin','Roger Anderson','Joseph Perez','Timothy Black']
# cust_add = ['202-203, 2, Millennium Park, Sector 3, Vashi','237, Shop No 3, Prabhu Niwas, Sane Guruji Rd, Nr Church, Jacob Circle',' 5-8-496/1, Chirag Ali Lane','137, Shastriamrket',' A/17, 224, Nandan, Savarkar Road, Mahim','B-10, Dalamal Towers, Nariman Point','B-10, Dalamal Towers, Nariman Point',' S No 208 A/3, Savitri Nagar, Sheikh Sarai','13, Amar Kunj, Sawarkar Marg, Shiwaji Udyan','Kambali Wadi, 148 Nehru Road, Vile Parle (east)']
# waiter_name = ['Tucker Lowe','Dominick Landry','Leroy Forbes','Juliette Snyder','Maritza Glass','Ivy Becker','Gerardo Strickland','Gauge Edwards','Laylah Blackburn','Tania Fischer']
# chef_name = ['Damarion Massey','Rebecca Dodson','Luke Sheppard','Diya Goodwin','Kaitlyn Byrd','Kendal Hahn','Zachery Duarte','Ayden Brady','Shania Eaton','Maritza Gates']
def fun():
    return "{}-{}-{}".format(str(random.randrange(1,28)),str(random.randrange(1,12)),str(random.randrange(2020,2021)))
    
for i in range(10):
    print("INSERT INTO {} VALUES('{}');".format(db_name,fun()))

