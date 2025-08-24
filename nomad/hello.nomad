job "hello" {
  datacenters = ["dc1"]

  group "example" {
    task "hello-task" {
      driver = "docker"

      config {
        image = "hello-devops:latest"
        port_map {
          http = 8080
        }
      }

      resources {
        cpu    = 500
        memory = 256
        network {
          mbits = 10
          port "http" {}
        }
      }
    }
  }
}
