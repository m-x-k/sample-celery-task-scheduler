from celery import Celery

app = Celery('tasks', backend='amqp', broker='amqp://guest@localhost//')
app.config_from_object('celeryconfig')


@app.task
def hello_world():
    return 'hello world'


if __name__ == '__main__':
    app.worker_main()
