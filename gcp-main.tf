resource "google_cloud_run_service" "default" {
  name     = "seara-back"
  location = "us-central1"

  template {
    spec {
      containers {
        image = ${{ secrets.ARTIFACT_REGISTRY }}/seara:latest
      }
    }

    metadata {
      annotations = {
        "run.googleapis.com/vpc-access-connector" = "vpcconn"
      }
    }
  }
}