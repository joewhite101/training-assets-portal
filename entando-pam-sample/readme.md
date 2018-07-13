# Entando PAM Starter

"Blank" Entando 5.0 Application to use as a starting point for a Red Hat Process Automation Manager (PAM) integration.

To quickly run locally:

```
mvn -jetty.port=8180 clean jetty:run
```

Open browser: [http://localhost:8180/entando-pam-sample]

> Adjust the jetty.port value to avoid conflicting with other locally running things (like the PAM KIE server)

Login to admin console:
* [http://localhost:8180/entando-pam-sample/do/login]
* User: admin
* Password: adminadmin

enjoy!
