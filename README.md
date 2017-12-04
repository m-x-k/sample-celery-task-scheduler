# Example Celery Task Scheduler

### Requirements 

* Python 2/3
* RabbitMQ: `sudo apt-get install rabbitmq-server`

### Setup

In terminal window run the following from the project root folder:
```
mkvirtualenv celeryspike
pip install -r requirements.txt
```

### Run celery app

In terminal window run the following from the project root folder:
```
workon celeryspike
celery -A tasks worker
```

### Execute task

In terminal window run the following from the project root folder:
```
workon celeryspike
celery -A tasks call tasks.hello_world
```

### Monitoring

#### RabbitMQ

Login using: guest/guest

http://localhost:15672/#/queues

Find the queue generated from your task and select the queue name.
You should be able to `Get Messages(s)`. 
You can base64 decode the payload to inspect its contents.
