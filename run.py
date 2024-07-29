from flask import Flask, render_template, send_from_directory
from dotenv import load_dotenv
import os

load_dotenv()

app = Flask(__name__)


app.config['SECRET_KEY'] = os.getenv('SECRET_KEY')


@app.route('/')
def garibaldi():
    return render_template('portada.html')

@app.route('/media/<path:filename>')
def media(filename):
    return send_from_directory(os.path.join(app.root_path, 'media'), filename)

@app.route('/privacidad')
def privacidad():
    return render_template('privacidad.html')