true=True; false=False; null=None
import sys 
import json 
import re 

string =""

for line in sys .stdin :
    string +=line 
    


parameters =re .split (r'(?<!\\)\.',sys .argv [1])

for i ,j in enumerate (parameters ):
    parameters [i ]=re .sub ("\\\\","",parameters [i ])
    


object =json .loads (string )
for i in parameters :
    object =object [i ]
    

print (object )