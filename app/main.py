import falcon

from app.TestData import Resource


app = application = falcon.App()

images = Resource()
app.add_route('/images', images)