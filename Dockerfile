FROM odoo:17

USER root

RUN pip3 install --upgrade pip

USER odoo
