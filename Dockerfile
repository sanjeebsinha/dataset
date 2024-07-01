FROM continuumio/anaconda3:4.4.0
COPY . /Users/app/
EXPOSE 5000
WORKDIR /Users/app/
RUN pip --trusted-host pypi.python.org install Cython==3.0.10
#RUN pip  --trusted-host pypi.python.org install streamlit
RUN pip --trusted-host pypi.python.org install Flask
RUN pip --trusted-host pypi.python.org install gunicorn
RUN pip --trusted-host pypi.python.org install itsdangerous
RUN pip --trusted-host pypi.python.org install Jinja2
RUN pip --trusted-host pypi.python.org install MarkupSafe
RUN pip --trusted-host pypi.python.org install Werkzeug
RUN pip --trusted-host pypi.python.org install numpy
RUN pip --trusted-host pypi.python.org install scipy
RUN pip --trusted-host pypi.python.org install scikit-learn
RUN pip --trusted-host pypi.python.org install matplotlib
RUN pip --trusted-host pypi.python.org install pandas
RUN pip --trusted-host pypi.python.org install flasgger

CMD python flask_api.py