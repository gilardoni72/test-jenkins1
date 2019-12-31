from flask import Flask
app = Flask(__name__)

def suma(a,b):
  return a+b
 
@app.route('/')
def hello():
     total = suma(2,3) 
     return 'Hello Mundo cruel %s' % (total) 

if __name__ == "__main__":
   app.run(host='0.0.0.0',port=5000) 



