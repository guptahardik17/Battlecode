#!/usr/bin/python

print("content-type: text/html")
print("")
import json
import cgi,cgitb
import commands as sp
import tempfile
import string
import random
cgitb.enable()
def id_generator(size=6, chars=string.ascii_uppercase + string.digits):
         return ''.join(random.choice(chars) for _ in range(size))
name=id_generator()

data=cgi.FieldStorage()
lang=data.getvalue('lang')
code=data.getvalue('code')
inputc=data.getvalue('input')
#print(inputc)
sp.getstatusoutput("sudo systemctl restart docker")
sp.getstatusoutput("sudo mkdir -p /var/www/python/")
sp.getstatusoutput("sudo mkdir -p /var/www/java/")
sp.getstatusoutput("sudo mkdir -p /var/www/php/")

if 'python' in lang:
        path="/var/www/python/"+name+".py"
        fh=open(path,'w')
        fh.write(code)
        fh.close()
        if inputc :
                path2="/var/www/python/"+name+".txt"
                h=open(path2,'w')
                h.write(inputc)
                h.close()
        else:
                pass
sp.getoutput("sudo chown apache /var/www/python/{}.py".format(name))
sp.getoutput("sudo chown apache /var/www/python/{}.txt".format(name))
if(inputc):
        output=sp.getstatusoutput("sudo docker run --rm  -v /var/www/python/:/data/ python:v2 /bin/bash -c 'python36 /data/{}.py <  /data/{}.txt'".format(name,name))
else:
        output=sp.getstatusoutput("sudo docker run --rm  -v /var/www/python/:/data/ python:v2 /bin/bash -c 'python36 /data/{}.py'".format(name))
print("STATUS CODE : "+str(output[0])+"<br><br>")
print("FINAL OUTPUT : "+str(output[1]))
sp.getstatusoutput("sudo rm -rf /var/www/python/*")
jsonOut=json.dumps(output)
print(jsonOut)
