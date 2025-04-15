from flask import Flask, jsonify
from nepali.datetime import nepalidate

app = Flask(__name__)

@app.route('/date', methods=['GET'])
def get_date():
    nepdate = nepalidate.today()
    return jsonify({
        "date_en": str(nepdate),  # return 2082-01-02
        "date_ne": nepdate.strftime_ne("%Y-%B-%d")  # return २०८२-बैशाख-०२
    })

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
