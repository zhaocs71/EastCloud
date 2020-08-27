name = "demo"
mode = "debug"
maxProc = 0
region = "广东"
zone = "一区"
groupName = "开发组"

type = "local"
format = "json"
watcher = true

logger {
  level = "error"
  development = true
  logFileDir = ""
  outputPaths = []
  maxSize = 50
  maxBackups = 200
  maxAge = 10
}

redis {
  mode = "single"
  password = "mylove1688"
  db = 0
  timeout = 3
  maxRetries = 3
    single {
      network = "tcp"
      addr = "localhost:6379"
    }
    cluster {
      clusterAddrs = "localhost:6379,localhost:6379"
    }
    sentinel {
      master = "master"
      sentinelAddrs = "localhost:6379,localhost:6379"
    }
    pool {
      poolSize = 0
      minIdleConns = 0
    }
}

orm {
  driver="mysql"
  host="127.0.0.1"
  port=3306
  database="test"
  username="root"
  password=""
  charset="utf8"
  prefix="t_"
  dbFile=""
}

tracer {
  driver="jaeger"
  name="demo"

  zipkin {
    endpointUrl = "http://192.168.16.218:9411/api/v2/spans"
  }

  jaeger {
    mode = "server"
    endpointUrl = "http://192.168.16.233:14268/api/traces"
    userName = ""
    password = ""
    agentEndpoint = "localhost:6831"
  }
}

server = [
  {
    driver = "gin"
    ip = ""
    port = 8000
  }
]