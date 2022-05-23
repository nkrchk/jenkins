FROM python:3.7.12-alpine 
WORKDIR /flask 
COPY app.py /flask/ 
COPY index.html /flask/templates/ 
RUN pip install flask 
EXPOSE 5000 
CMD ["python3", "app.py"]
