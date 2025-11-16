# Use official Odoo image (version 19)
FROM odoo:19

# Become root to install extra system packages if needed
USER root

# Update and install small helpers (agar zaroorat ho to yahan aur packages add karo)
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      nano \
      less \
    && rm -rf /var/lib/apt/lists/*

# (Optional) Copy custom addons from the repo (agar tumhare repo me addons folder hai)
# COPY ./addons /mnt/extra-addons

# Switch back to the odoo user (official image runs as odoo)
USER odoo

# Expose default Odoo port (Render manages routing, but good to declare)
EXPOSE 8069

# Default command uses image's entrypoint — no change needed
# If you want to override, you can add an entrypoint or CMD here.
# CMD ["odoo", "-c", "/etc/odoo/odoo.conf"]
