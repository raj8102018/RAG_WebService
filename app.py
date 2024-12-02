"""This module contains the API functionality"""
from flask import Flask, request, jsonify
from rag_app import answer_pdf

app = Flask(__name__)

def retrieve_and_generate_answer(question, file_name):
    """Function to retrieve answer from the text"""
    return answer_pdf(question,file_name)

# GET endpoint for asking questions (useful for simple queries)
@app.route('/api/answer', methods=['GET'])
def get_answer():
    """Route handler to fetch the answer from text using a get request"""
    question = request.args.get('question')
    file_name = request.args.get('file_name')

    if not question:
        return jsonify({"error": "Please provide a question"}), 400

    answer = retrieve_and_generate_answer(question, file_name)

    return jsonify({"question": question, "answer": answer})

# POST endpoint for asking questions (useful for complex data)
@app.route('/api/answer', methods=['POST'])
def post_answer():
    """Route handler to fetch the answer from text using a post request"""
    data = request.get_json()
    question = data.get('question')
    file_name = data.get('file_name')

    if not question:
        return jsonify({"error": "Please provide a question"}), 400

    answer = retrieve_and_generate_answer(question,file_name)

    return jsonify({"question": question, "answer": answer})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
