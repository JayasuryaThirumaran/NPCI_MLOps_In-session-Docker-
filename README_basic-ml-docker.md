# Basic Docker ML Exercise

## Overview
Learn to containerize a simple ML application that:
1. Trains a model on iris dataset
2. Makes predictions via REST API
3. Saves and loads the model

## Project Structure
```
basic-ml-docker/
├── Dockerfile
├── requirements.txt
├── app/
│   ├── train.py
│   ├── predict.py
│   └── model/
│       └── .gitkeep
└── README.md
```

## Tasks
1. Build Docker image
2. Train the model
3. Make predictions
4. View logs

## Step-by-Step Instructions

### Task 1: Build the Docker Image
1. Create Dockerfile
2. Build image
3. Verify image creation

### Task 2: Train Model
1. Run training container
2. Verify model creation
3. Check training logs

### Task 3: Make Predictions
1. Start prediction service
2. Send test requests
3. View predictions

### Task 4: View Logs
1. Check container logs
2. Monitor predictions
3. Verify model accuracy
