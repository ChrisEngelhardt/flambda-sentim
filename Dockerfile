FROM chrisengelhardt/flambda
COPY requirements.txt /app/requirements.txt
RUN pip3 install --no-cache-dir -r /app/requirements.txt
RUN pip3 install --extra-index-url https://google-coral.github.io/py-repo/ tflite_runtime
COPY lambdas /app/lambdas

WORKDIR /app/
CMD [ "python", "main.py" ]
