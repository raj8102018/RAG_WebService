# PDF Question-Answering App Using Retrieval-Augmented Generation (RAG)
Welcome to the PDF Question-Answering App! This application leverages Retrieval-Augmented Generation (RAG) with FAISS and MongoDB to provide accurate, real-time answers to questions based on the content of uploaded PDF documents.

## Features
Dynamic Q&A on PDF Content: Easily query any PDF document and receive accurate answers to your questions.
Scalable Storage with FAISS and MongoDB: Stores and retrieves document embeddings for fast, efficient responses.
Integration with LangChain: Utilizes LangChain for seamless integration of RAG with the question-answering pipeline.
Project Structure
data_processing: Scripts for PDF ingestion, preprocessing, and text extraction.
embedding_storage: Uses FAISS to index document embeddings, with MongoDB for efficient data retrieval.
question_answering: RAG-based pipeline that retrieves relevant content and generates responses.
api: REST API built with Flask for handling document uploads, user queries, and returning answers.

## Getting Started
These instructions will guide you to set up the project locally.

Prerequisites
Python 3.8+
MongoDB
FAISS
LangChain
Flask
PyPDF2 (or another PDF processing library)

## Install Requirements

### Install the required Python packages:

pip install -r requirements.txt
Set Up MongoDB

Start MongoDB and ensure it's accessible. You can configure the MongoDB connection string in the .env file.

Configure Environment Variables

Create a .env file in the root directory with the following variables:

python app.py
This command will start the Flask server on localhost:5000.

Usage
1. Upload a PDF Document
Upload a pdf document to your MongoDB database collection. The system will process the PDF, extract text, and create embeddings stored in FAISS and MongoDB.

2. Ask Questions
Once your document is indexed, you can send questions to the /query endpoint. The system will retrieve relevant content and generate a response based on the content of the document.

## Acknowledgments
FAISS for efficient similarity search.
LangChain for streamlining the RAG pipeline.
This README will help others understand and use your project easily. Let me know if you’d like to add anything specific!