FROM python:3.7

ADD requirements.txt /root/
WORKDIR /root
RUN pip install -r requirements.txt

ADD jupyter-config /root/.jupyter
ADD README.md /root/data-science-playground/

EXPOSE 8888

CMD ["jupyter", "lab", "/root/data-science-playground"]
