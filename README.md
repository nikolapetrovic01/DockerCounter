# 🐳 Dockerized Flask-Redis Hit Counter

A professional, containerized web application that tracks visitor hits. This project serves as a comprehensive "Proof of Concept" for modern DevOps workflows, focusing on **Microservices Orchestration**, **Environment Decoupling**, and **Data Persistence**.

---

## The Point of This Project
The goal of this project was to move beyond "code that runs on my machine" to a **portable, scalable infrastructure**.
* **Isolation:** Separating the Web logic (Python) from the Data layer (Redis).
* **Portability:** Ensuring the app runs identically on Windows, Mac, Linux, or the Cloud.
* **Developer Velocity:** Using Docker Volumes for "Live Reload" coding without needing to rebuild images.

---

## Technical Architecture

The application is built using a microservices-oriented approach, ensuring each component is isolated and scalable.

* **Frontend/API:** Python Flask running on **Alpine Linux** (optimized for small image size).
* **Database:** **Redis**, acting as an ultra-fast in-memory data store.
* **Orchestration:** **Docker Compose** manages the lifecycle and networking of both services.
* **Communication:** Internal Docker bridge network using **Service Discovery**. The web app finds the database via the `REDIS_HOST` environment variable.

---

## Requirements & Installation

### Requirements
* [Docker Desktop](https://www.docker.com/products/docker-desktop/) (includes Docker Compose)

### Installation
1.  **Clone the Repository**
    ```bash
    git clone [https://github.com/your-username/docker-counter.git](https://github.com/your-username/docker-counter.git)
    cd docker-counter
    ```

2.  **Start the Services**
    ```bash
    docker-compose up
    ```

3.  **Access the App**
    Navigate to `http://localhost:5001` in your browser.

---

## How to Expand This Project

### Persistent Volumes
Currently, if you run `docker-compose down`, your hit count is lost.
* **Action:** Add a **Named Volume** to the Redis service in `docker-compose.yml`.
* **Outcome:** Data is stored on your physical hard drive, making your hit counter "immortal" across restarts.

---
