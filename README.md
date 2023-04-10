## Commads: 
1. Build image  
    ```
   docker build --no-cache -t simple-node-app . 
    ```
2. Create bridge network  
   ```
   docker network create nodebridge
   ```
3. Run a container named app-container with port 80, limited to 1 CPU and 512 MB of memory  
   ```
   docker run --name app-container --network=nodebridge -p 80:80 -d --cpus=1 --memory=512m simple-node-app
   ```
4. Login to Docker Hub
    ``` 
    docker login
    ```
5. Tag local image with Docker Hub repo username/repo   
    ```
   docker tag simple-node-app username/repo
   ```
6. Push image to Docker Hub  
   ```
   docker push username/repo
   ```
