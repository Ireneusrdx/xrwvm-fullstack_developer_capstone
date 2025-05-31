import requests
import os
from dotenv import load_dotenv

load_dotenv()

backend_url = os.getenv(
    'backend_url', default="http://localhost:3030")
sentiment_analyzer_url = os.getenv(
    'sentiment_analyzer_url',
    default="http://localhost:5050/")


def get_request(endpoint, **kwargs):
    """Add code for get requests to back end"""
    request_url = backend_url + endpoint
    print(f"GET from {request_url}")
    try:
        # Call get method of requests library with URL and parameters
        if kwargs:
            response = requests.get(request_url, params=kwargs)
        else:
            response = requests.get(request_url)
        return response.json()
    except Exception as e:
        print(f"Unexpected error in get_request: {e}")
        return {}


def analyze_review_sentiments(text):
    """Add code for retrieving sentiments"""
    request_url = sentiment_analyzer_url + "analyze/" + text
    try:
        # Call get method of requests library with URL and parameters
        response = requests.get(request_url)
        return response.json()
    except Exception as e:
        print(f"Unexpected error in analyze_review_sentiments: {e}")
        return {"sentiment": "neutral"}


def post_review(data_dict):
    """Add code for posting review"""
    request_url = backend_url + "/insert_review"
    try:
        response = requests.post(request_url, json=data_dict)
        return response.json()
    except Exception as e:
        print(f"Unexpected error in post_review: {e}")
        return {}
