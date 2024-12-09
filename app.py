from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    todos = ["Learn Python", "Build Robot Framework tests", "Write clean code"]
    return render_template('index.html', todos=todos)

if __name__ == '__main__':
    app.run(debug=True)
