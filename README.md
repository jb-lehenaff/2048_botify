# 2048_botify

La version de développement est accessible sur cette url: http://92.222.10.191:5000/.

La version de production est déployable dans un conteneur docker avec un conteneur nginx.

About the potential improvments:

- For the security i would improve:
Authentication, environment variables injections, credentials management, SSL certificate

- For the backups: Create a crontab and make databases archives or, database snapshots.

- For the scale: Use of kubernetes

- To reduce the downtime when upgrading: Deploy your containers on serverless infrastructures
