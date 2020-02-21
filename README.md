# Graph-JS Backend README

The purpose of this project was to experiment with and learn the D3.js library by using it to mimic Google Sheets/Microsoft Excel's graphing functions.

The goal was to create a one-page website in Javascript onto which you could upload CSV files, parse them into tables, then generate graphs from the tables. The CSV files would be persisted to an external server and the access URL saved to the backend. Users would then be able to access all uploaded datasets and create graphs by specifying columns for axes and data series.

The result is simple enough, but was great practice for learning D3's features for the first time. Users can perform all of the above and generate three classic charts. Bar, Line, and Pie Charts.

## Settup

Unfortunately, this repo does not support local cloning and settup at this time. It may eventually be deployed via Heroku, github.io or another medium, but in the meantime please feel free to watch the following for an example demonstration. We are sorry for the inconvenience.

<a href="http://www.youtube.com/watch?feature=player_embedded&v=ua4csPpWLk8
" target="_blank"><img src="http://img.youtube.com/vi/ua4csPpWLk8/0.jpg" 
alt="IMAGE ALT TEXT HERE" width="240" height="180" border="10" style="margin: auto"/></a>

## Models

The models for this project are as follows: 

    Users -< Datasets
    Datasets -< LineGraphs
    Datasets -< BarGraphs
    Datasets -< PieGraphs

With Users having many Datasets, and Datasets having many Line, Bar and Pie Graphs.

### Users

The users model exclusively keeps track of it's username and password

### Datasets

Datasets keeps track of it's name, the id of the user that owns it, and a CSV URL that links to the Cloudinary host saving the file. This URL is what the frontent uses to retrieve the data file for re-parsing on subsequent visits

### Graphs

I've collected the three models into one description because they can be optimized down into one at a later date. They all keep track of five things:

- The Dataset ID of the DS they belong to
- Their Title
- Their Description
- A stringified xAxis array that contains a keyword for column or row, and a number of that column/row
- A flattenedSeries Array that contains a stringified array of series, each series formatted similarly to the xAxis array

The graphs persist only the data needed to re-locate the info in their corresponding datafile. On the frontend, once a datafile is re-fetched and graph specs for it fetch from the backend, the front-end handles the re-parsing and generation of each graph on-site.