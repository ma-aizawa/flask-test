from flask import Flask
from app.database import init_db
from app.models import User

def create_app():
    app = Flask(__name__)
    app.config.from_object('app.config.Config')

    init_db(app)

    return app
app = create_app()

@app.route('/user/<id>')
def user(id):
    user = User.query.filter_by(id=id).first()
    return user.name

