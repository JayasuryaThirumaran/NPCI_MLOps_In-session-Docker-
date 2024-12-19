# app/predict.py
from flask import Flask, request, jsonify
import pickle
import numpy as np

app = Flask(__name__)

# Load model
with open('app/model/iris_model.pkl', 'rb') as f:
    model = pickle.load(f)

@app.route('/predict', methods=['POST'])
def predict():
    try:
        # Get features from request
        features = request.json['features']
        
        # Make prediction
        prediction = model.predict([features])[0]
        
        # Return result
        return jsonify({
            'prediction': int(prediction),
            'class_name': ['setosa', 'versicolor', 'virginica'][prediction]
        })
    except Exception as e:
        return jsonify({'error': str(e)}), 400

@app.route('/health', methods=['GET'])
def health():
    return jsonify({'status': 'healthy'})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
