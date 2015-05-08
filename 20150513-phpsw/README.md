# PPI - The Interop Framework

Slides for the talk presented at [PHPSW](http://phpsw.uk/events/221484453-frameworks), 13th of May 2015.

> Paul and Vítor will be showing off the newly released PPI 2.1, explaining what they’ve been working on and what extra value using an interop framework brings on top of just using a single standalone framework.

## Installation

The **basic setup** is for authoring presentations only. The **full setup** gives you access to all reveal.js features and plugins such as speaker notes as well as the development tasks needed to make changes to the source.

### Basic setup

The core of reveal.js is very easy to install. You'll simply need to download a copy of this repository and open the index.html file directly in your browser.

1. Open index.html in a browser to view it

### Full setup

Some reveal.js features, like external Markdown and speaker notes, require that presentations run from a local web server. The following instructions will set up such a server as well as all of the development tasks needed to make edits to the reveal.js source code.

1. Install [Node.js](http://nodejs.org/)

2. Install [Grunt](http://gruntjs.com/getting-started#installing-the-cli)

3. Install dependencies
   ```sh
   $ npm install
   ```

4. Serve the presentation and monitor source files for changes
   ```sh
   $ grunt serve
   ```

5. Open <http://localhost:8000> to view your presentation

   You can change the port by using `grunt serve --port 8001`.

## Single page HTML

1. Install Inliner
    ```sh
    $ npm install inliner -g
    ```
    
2. Serve the presentation
   ```sh
   $ grunt serve
   ```
   
3. Turns the presentation web page to a single HTML file with everything inlined
    ```sh
    $ inliner -v http://0.0.0.0:8000/#/ > build/ppi-phpsw-20150513.html

## PDF Export

Presentations can be exported to PDF via a special print stylesheet. This feature requires that you use [Google Chrome](http://google.com/chrome).
Here's an example of an exported presentation that's been uploaded to SlideShare: http://www.slideshare.net/hakimel/revealjs-300.

1. Open your presentation with `print-pdf` included anywhere in the query string. This triggers the default index HTML to load the PDF print stylesheet ([css/print/pdf.css](https://github.com/hakimel/reveal.js/blob/master/css/print/pdf.css)). You can test this with [lab.hakim.se/reveal-js?print-pdf](http://lab.hakim.se/reveal-js?print-pdf).
2. Open the in-browser print dialog (CMD+P).
3. Change the **Destination** setting to **Save as PDF**.
4. Change the **Layout** to **Landscape**.
5. Change the **Margins** to **None**.
6. Click **Save**.

![Chrome Print Settings](https://s3.amazonaws.com/hakim-static/reveal-js/pdf-print-settings.png)

## License

MIT licensed

Copyright (C) 2015 Paul Dragoonis, Vítor Brandão, http://ppi.io
