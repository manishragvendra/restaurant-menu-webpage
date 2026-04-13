# Restaurant Menu Webpage

## Project Overview
This project provides a comprehensive and interactive webpage for displaying a restaurant's menu. It is built with modern web technologies to ensure a responsive and user-friendly experience.

## Features
- Interactive menu display
- Categorized menu items
- User-friendly interface
- Responsive design for mobile and desktop
- Docker and Kubernetes support for easy deployment

## Technologies Used
- HTML
- CSS
- JavaScript
- Node.js
- Express.js
- MongoDB

## Getting Started Instructions
1. Clone the repository:  
   `git clone https://github.com/<owner>/restaurant-menu-webpage.git`
2. Navigate into the project directory:  
   `cd restaurant-menu-webpage`
3. Install the necessary dependencies:  
   `npm install`
4. Start the application:  
   `npm start`

## Docker Setup
1. Build the Docker image:  
   `docker build -t restaurant-menu-webpage .`
2. Run the container:  
   `docker run -p 3000:3000 restaurant-menu-webpage`

## Kubernetes Deployment
To deploy the application on a Kubernetes cluster, create the necessary deployment and service files:

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: restaurant-menu-webpage
spec:
  replicas: 2
  selector:
    matchLabels:
      app: restaurant-menu-webpage
  template:
    metadata:
      labels:
        app: restaurant-menu-webpage
    spec:
      containers:
      - name: restaurant-menu-webpage
        image: restaurant-menu-webpage:latest
        ports:
        - containerPort: 3000
---
apiVersion: v1
kind: Service
metadata:
  name: restaurant-menu-webpage
spec:
  type: LoadBalancer
  ports:
    - port: 80
      targetPort: 3000
  selector:
    app: restaurant-menu-webpage
```

## Menu Items
- **Appetizers**: Spring Rolls, Garlic Bread, Nachos  
- **Main Course**: Grilled Chicken, Vegetarian Pizza, Pasta  
- **Desserts**: Cheesecake, Ice Cream, Fruit Salad

## Contact Information
For inquiries, please contact:  
Email: info@restaurant.com  
Phone: +1-234-567-8901

## CI/CD Pipeline Details
The project uses GitHub Actions for CI/CD. It includes workflows for:
- Building the application
- Running tests
- Deploying to the production server

## File Descriptions
- `index.html`: Main HTML file for the webpage.
- `styles.css`: CSS file to style the webpage.
- `app.js`: Main application code.
- `Dockerfile`: Instructions to build the Docker image.
- `kubernetes.yaml`: Kubernetes deployment and service configurations.

