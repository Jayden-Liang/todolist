from flask import Flask

from .routes import route

def create_app():
    app = Flask(__name__)
    app.config['DEBUG'] = True
    app.register_blueprint(route.main)
    return app

