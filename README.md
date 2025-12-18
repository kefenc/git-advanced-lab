🚀 Git Advanced Lab – Python CI/CD & DevSecOps

This repository demonstrates an end-to-end CI/CD and DevSecOps pipeline for a Python application using GitHub Actions, integrated with code quality, security scanning, and Kubernetes deployment manifests.

It is designed as a hands-on lab to understand advanced Git workflows, CI/CD automation, and DevSecOps best practices.

📌 Repository Objectives

Implement CI/CD for a Python application

Practice advanced Git operations

Integrate DevSecOps tools (SonarQube, CodeQL)

Apply containerization and Kubernetes deployment

Demonstrate shift-left security in pipelines

🧱 Project Structure
git-advanced-lab/
│
├── app/                      # Python application source code
│   ├── app.py
│   └── requirements.txt
│
├── tests/                    # Unit test cases
│
├── .github/
│   └── workflows/
│       ├── ci.yml            # CI pipeline (build, test, scan)
│       ├── codeql.yml        # CodeQL security analysis
│       └── sonar.yml         # SonarQube scan
│
├── k8s/                      # Kubernetes manifests
│   ├── deployment.yaml
│   ├── service.yaml
│   └── ingress.yaml
│
├── Dockerfile                # Containerization
├── sonar-project.properties  # SonarQube configuration
├── .gitignore
└── README.md

⚙️ Technologies & Tools Used
🔹 Language & Framework

Python 3.x

Flask / FastAPI (if applicable)

🔹 CI/CD

GitHub Actions

GitHub Workflows (YAML)

🔹 DevSecOps

SonarQube – Code quality & static analysis

CodeQL – Security vulnerability scanning

Bandit / Safety (optional – if used)

🔹 Containers & Orchestration

Docker

Kubernetes (YAML manifests)

🔄 CI/CD Pipeline Overview
GitHub Actions Workflow Includes:

Code Checkout

Python Environment Setup

Dependency Installation

Linting & Unit Tests

SonarQube Scan

CodeQL Security Scan

Docker Image Build

Kubernetes Manifest Validation (optional)

🔐 DevSecOps Integration
✅ SonarQube

Detects:

Code smells

Bugs

Maintainability issues

Quality gates enforce clean code standards

✅ CodeQL

Identifies:

Security vulnerabilities

Unsafe coding patterns

Runs automatically on every push / PR

☸️ Kubernetes Deployment

The k8s/ directory contains manifests for deploying the application:

Deployment – Application pods

Service – Internal/external access

Ingress – HTTP routing (if configured)

Apply Manifests:
kubectl apply -f k8s/

Verify:
kubectl get pods
kubectl get svc

🧪 Running the App Locally
1️⃣ Clone the Repository
git clone https://github.com/<your-username>/git-advanced-lab.git
cd git-advanced-lab

2️⃣ Install Dependencies
pip install -r requirements.txt

3️⃣ Run Application
python app/app.py

🐳 Docker Usage
Build Image
docker build -t git-advanced-lab .

Run Container
docker run -p 5000:5000 git-advanced-lab

🧠 Learning Outcomes

Advanced Git & GitHub Actions usage

Building CI/CD pipelines for Python

Integrating DevSecOps tools early

Writing production-ready Kubernetes manifests

Real-world automation & security practices

📚 Use Cases

DevOps / DevSecOps learning

CI/CD lab practice

Interview preparation

Kubernetes deployment demos

Secure SDLC demonstrations

🤝 Contributing

Contributions are welcome!
Feel free to fork this repository, raise issues, or submit pull requests.

📜 License

This project is licensed under the MIT License.

👨‍💻 Author
Maintained by:
Biswajit Dash
DevOps / Cloud / DevSecOps Engineer
CI/CD | Kubernetes | Security Automation
Maintained by:
DevOps / Cloud / DevSecOps Engineer
CI/CD | Kubernetes | Security Automation
