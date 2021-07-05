# saebio-covid19-project
This is the Degree Final Project `sæbio: development of a dashboard for the multidimensional analysis of COVID-19`, which analyses multidimensionally the SARS-CoV-2 detection tests taken in the Hospital Universitario de Gran Canaria Doctor Negrín.
# Configuration
## Minimum requirements
- **Node version 8.9 or above (v10+ recommended)**. Check you have npm and Node installed on your device by using:
````
npm -v
node -v
````
 or install them from https://nodejs.org/en/download/  (note that Node downloads include npm)
 - **Java SE 14.02**. Check your Java installation version by using:
 ```
 java --version
 ```
 or install it from https://www.oracle.com/java/technologies/javase-downloads.html.

It is also possible to use the project with supported **OpenJDK** distributions available at https://adoptopenjdk.net/releases.html. Any Java 8+ supported version should work.


## Configuration
### Altering the number of days used in episode computation
The number of days considered for episode calculation can be altered from the `saebio-macOS.command` and `saebio-windows.bat` files. Specifically, the `-e` numeric option. The default configuration uses `-e 90` for these operations.
### Running Metabase on another port
It is possible to customize Metabase Jetty webserver by following the steps described in https://www.metabase.com/docs/latest/operations-guide/customizing-jetty-webserver.html. 

You will also need to change the port of the environment variable *VUE_APP_METABASE_SITE_URL*  created in the `.env` file located in the [saebio-ui](https://github.com/gabrilopez/saebio-ui) project and build it again using `npm run build`. Then, replace the current `dist` folder located under the `saebio-ui` module folder with the one generated.

### Running the Java Spark API on another port
The port used by the Java Spark API module can be changed from the `saebio-macOS.command` and `saebio-windows.bat` files.

You will also need to change the port of the environment variable *VUE_APP_API_HOST_URL* created in the `.env` file located in the [saebio-ui](https://github.com/gabrilopez/saebio-ui) project and build it again using `npm run build`. Then, replace the current `dist` folder located under the `saebio-ui` module folder with the one generated.

### Running the Vue.js module on another port
The port where the user interface runs can be configured by opening the `server.js` file under the `saebio-ui` module and modifying the `port` variable. This change will automatically be applied the next time the application is launched. 
&nbsp;
> **Note:** For further personalization, check the Bash Script located in the project root and modify it to your needs. Note that you might need to change environment variables in the VueJS module.
> 
> This project uses the database file located in the project *sqlite* module. If this is changed, note that you might need to change the database location from the Metabase module by logging in and accessing the Admin panel.
