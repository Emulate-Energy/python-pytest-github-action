FROM python:3.9-slim

LABEL "com.github.actions.name"="GitHub Action for Python Pytest"
LABEL "com.github.actions.description"="Run pytest commands on python slim image"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="black"


RUN pip install --upgrade pip
RUN pip install pytest==6.2.5 pytest-cov==2.12.1 pytest-mock==3.6.1

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
