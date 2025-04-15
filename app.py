from flask import Flask, jsonify
from nepali.datetime import nepalidate

app = Flask(__name__)

@app.route('/date', methods=['GET'])
def get_nepali_date():
    today = nepalidate.today()
    return jsonify({
        "nepali_date": str(today)
    })

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
