Certainly! Here's the same content in a single code block that you can easily copy:

```markdown
# Learn Docker - Python Application

This is a simple Python application that performs basic arithmetic operations using a command-line interface.

## Prerequisites

Before running the application, ensure you have the following installed:

- [Python 3](https://www.python.org/downloads/)
- [Docker](https://docs.docker.com/get-docker/)

## Installation

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/your_username/learn-docker.git
   cd learn-docker
   ```

2. Create a virtual environment (optional but recommended):

   ```bash
   python3 -m venv venv
   ```

3. Activate the virtual environment:

   - On macOS and Linux:

     ```bash
     source venv/bin/activate
     ```

   - On Windows (using Command Prompt):

     ```bash
     .\venv\Scripts\activate
     ```

   - On Windows (using PowerShell):

     ```bash
     .\venv\Scripts\Activate.ps1
     ```

4. Install project dependencies from `setup.py`:

   ```bash
   pip install -e .
   ```

## Running the Application

### Using the Command Line

To run the Python application from the command line, use the following command:

```bash
python src/calculate_app.py
```

### Using Docker

To run the Python application within a Docker container, build the Docker image and run a container:

```bash
make dev
```


## Run docker locally

docker run -p 8080:8080 us.gcr.io/numeric-chassis-412718/calculate-app:dev
