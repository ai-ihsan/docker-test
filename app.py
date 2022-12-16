from flask import Flask, request

app = Flask(__name__)

# Dictionary to store IP address counts
ip_counts = {}

@app.route('/')
def index():
    # Get the user's IP address
    user_ip = request.remote_addr
    
    # Increment the count for the user's IP address
    if user_ip in ip_counts:
        ip_counts[user_ip] += 1
    else:
        ip_counts[user_ip] = 1
    
    # Build the response string
    response = f'Your IP address is {user_ip}. You have accessed this page {ip_counts[user_ip]} times.'
    
    return response

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)