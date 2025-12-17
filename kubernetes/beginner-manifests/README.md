# Kubernetes Beginner Manifests  
This directory provides basic Kubernetes manifest examples to get started with deploying applications on a cluster.  

Included manifests:  
- `deployment.yaml`: Defines a simple Deployment with a replica set for a sample application.  
- `service.yaml`: Exposes the deployment via a ClusterIP service.  
- `ingress.yaml`: Routes external traffic to the service using an Ingress resource.  
- `configmap.yaml`: Stores configuration data used by the application.  
- `secret.yaml`: Stores sensitive data like passwords.  
- `autoscale.yaml`: Demonstrates a Horizontal Pod Autoscaler (HPA) to scale pods based on CPU utilization.  

These manifests are intended to be easy to understand and modify for your own experiments.
