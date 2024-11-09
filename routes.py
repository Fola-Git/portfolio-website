from flask import render_template

def setup_routes(app):
    # Route for the home page (index.html)
    @app.route('/')
    def home():
        return render_template('index.html')

    # Route for the experience page (experience.html)
    @app.route('/experience')
    def experience():
        return render_template('experience.html')
