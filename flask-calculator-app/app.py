from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/')
def calculator():
    return render_template('calculator.html')

@app.route('/calculate', methods=['POST'])
def calculate():
    expression = request.form['expression']
    try:
        result = eval(expression)
        return render_template('calculator.html', expression=expression, result=result)
    except:
        error_message = "Error: Invalid expression"
        return render_template('calculator.html', expression=expression, error_message=error_message)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
 
