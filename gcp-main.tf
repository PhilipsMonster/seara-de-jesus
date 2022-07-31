resource "google_cloud_run_service" "default" {
  name     = "seara-back"
  location = "us-central1"

  template {
    spec {
      containers {
        image = "us-central1-docker.pkg.dev/seara-embu/seara-back/seara:latest"
      }
    }

    metadata {
      annotations = {
        "run.googleapis.com/vpc-access-connector" = "vpcconn"
      }
    }
  }
}