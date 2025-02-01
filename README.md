## YOLO Object Detection Microservice

This microservice provides an HTTP API for object detection in images using the YOLO 11 model. It receives an image via an HTTP POST request, processes it using the YOLO model, and returns the image with detected objects.

### Deployment
#### 1. Requirements
- Minikube
- kubectl configured to access your cluster

#### 2. Steps to Deploy

- Clone the Repository
- Create the Deployment and Service:
```bash
kubectl create -f deployment.yaml
kubectl create -f service.yaml
```

#### 3. Usage

- Get the ip address of minikube (internal IP address in this case)
```bash
minikube service yolo-service --url
```
- Make the script executable
```bash
chmod +x run.sh
``` 

#### 4. Upload an Image for Detection and Download the detection result

```bash
./run.sh <ip address> <port> <path to the image>
```