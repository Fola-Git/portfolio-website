from flask import Flask

from app.routes import setup_routes

app = Flask(__name__, template_folder="app/templates", static_folder="app/static")

# Set up the routes
setup_routes(app)

if __name__ == '__main__':
    app.run(debug=True)
