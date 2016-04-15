# Lift-Bit configurator
Processing.js sketch for the configuration of a Lift-Bit-powered personal space, currently published at [http://lift-bit.com/index.php/configurator/](http://lift-bit.com/index.php/configurator/).
## A little bit of context
I firstly wrote this program for more technical reasons, to generate the various configurations of Lift-Bit for the “[ROOMS. Novel living concepts](http://www.salonemilano.it/en/manifestazioni/eventi-appuntamenti/lista-eventi-del-salone/2016/stanze-nuovi-paesaggi-domestici.html)” exhibition organised by [Salone del Mobile – Milano](http://www.salonemilano.it/en/)” within the framework of the [XXI Triennale](http://www.triennale.org/en/).
Therefore, the original version would output a .csv file containing a table with the elevation values of all the single Lift-Bits in the room, which the [Open Dot](http://www.opendotlab.it/) team used to move the physical objects. You may find many remains of this scope which seem like useless over-complications. Later, the sketch was modified in order to output footage for the [Lift-Bit teaser video](http://processingjs.org) and finally for the [online configurator](http://lift-bit.com/index.php/configurator/). 
### 3D vs 2D
While the original version run locally in [Processing](https://processing.org) with Java mode and used a 3D representation of the Lift-Bits, I encountered quite a lot of hiccups and problems during the translation to a JavaScript-compatible version and I finally resolved to a 2D representation. I’m afraid Processing JS is not yet ready for 3D. However, with some adjustments to the overlapping of images and a little perspective illusion it finally turned out quite well.
### Spaghetti like there’s no tomorrow
You may also notice that some parts are extremely ill-written, like the whole UI part: that was due to lack of time and my personal masochist aversion to the use of external libraries. In fact I used none.
## How to use
The interface should be quite self-explanatory. What’s not written is that you can also use keyboard shortcuts for methods, such as:
- **e** – empty the grid
- **f** - fill the grid
- **d** - Lift-Bits in range all way down
- **u** - Lift-Bits in range all way up
- **r** - all Lift-Bits to random elevation
- **w** - make a wave
- **h** - make a hill with selected Lift-Bit as top
- **v** - make a valley with selected Lift-Bit as bottom
- **c** - to delete the selected Lift-Bit as an alternative to **BACKSPACE** which tends to bring to the previous page in some browsers.

The ‘range’ defines the number of Lift-Bits surrounding the selected one that are influenced by some of the methods. It has been set to 3 for simplicity but used to be freely settable in the original version - just uncomment that part to try.
## Outputs
Press **’s’** two times and the sketch will try to save a screenshot of the current configuration as a .png image URI, opening it in a new browser tab. This could take some time depending on your browser and connection speed. If you switch to Java mode, you can also export your configuration as a csv file: the method **saveTable()** is just commented on top of **saveFrame()** in the **method_interaction** tab, while **searchFile()** can be used to load it. 
Due to problems in reading external files in JavaScript mode, I integrated the current configurations in the sketch as two-dimensional arrays (check the **method_configurations** tab).
## To-Dos
The sketch can be still refined in many ways: feel free to comment, fork, change and improve.
## Credits
Lift-Bit is a project by [Carlo Ratti Associati](http://www.carloratti.com), developed with the support of [Vitra](https://www.vitra.com) for the [“ROOMS. Novel living concepts”](http://www.salonemilano.it/en/manifestazioni/eventi-appuntamenti/lista-eventi-del-salone/2016/stanze-nuovi-paesaggi-domestici.html) exhibition organised by [Salone del Mobile – Milano](http://www.salonemilano.it/en/) within the framework of the XXI Triennale. Engineering and interaction design by [Opendot](http://www.opendotlab.it/). More information is available at [lift-bit.com](http://lift-bit.com).
## Thanks
To the [Processing](https://processing.org) and [Processing.js](http://processingjs.org) communities for answering all my questions without me even asking. To [Quattrolinee](http://www.quattrolinee.it) for the graphic treatment of the UI. To [Gildas P.](http://www.gildasp.fr/#/accueil/) for [this useful Processing.js extension](http://playingwithpixels.gildasp.fr/exemples/jprocessingjs/).
To Gillian Crampton Smith, Philip Tabor, Till Nagel and Steffen Klaue for introducing me to Processing.



