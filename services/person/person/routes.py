from person.main import app

@app.route('/')
def index_page():
	return hello_world()

def hello_world():
    return 'hello world'
