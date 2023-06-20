# gcp-mess-about

- Use terraform to set up a GKE cluster
  - enable project level apis - done in console for now
  - set up cluster itself - basics done
  - service accounts?
- Deploy test service to cluster
- Set up monitoring
- Set up argocd
- Run everything from Github actions
- Set up branch deployments


Notes / Links

When building container image on M1/ARM
docker buildx build --platform linux/amd64 -t russcox/test-service:2 --no-cache .

https://developer.hashicorp.com/terraform/tutorials/kubernetes/gke

https://github.com/terraform-google-modules/terraform-google-project-factory/blob/master/docs/TROUBLESHOOTING.md