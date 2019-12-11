---
title: "Score Following With Wisconsin Public Radio a Success"
date: 2012-04-24
draft: false
categories = ["Technology", "Broadcasting"]
---

[Wisconsin Public Radio](http://wpr.org/) and Open Goldberg have successfully made radio history. On June 24, 2012, WPR broadcast the entire Goldberg Variations recording made by Kimiko Ishizaka. At the same time, technologies for score following provided by [MuseScore](http://musescore.com/) and [SampleSumo](http://samplesumo.com/) were used to broadcast the score of the Goldbergs to anyone who was watching via a browser. The radio audience was instructed to visit opengoldberg.wpr.org, choose their radio station, and then watch the measures get highlighted in synchronicity with the broadcast of the radio.

This event was uniquely possible through the combination of a MuseScore edition of a piece, the SampleSumo score-following technology, and a node.js based webserver provided by MuseScore. A computer to do the sound analysis and score following was plugged directly into WPR's broadcast feed. It sent a series of timing signals to the node.js webserver as each measure progressed. The node.js webserver communicated the timing and location of the music to all of the browsers that were watching the score using HTML5 web sockets. One further technical challenge was the varying 8-13 second delays that are built into the radio broadcasting. These varied based on station (WPR has several radio stations covering all of Wisconsin). It was therefore necessary to build in variable lag times between the actual studio broadcast and the time when the signal would reach the viewer's web browser.

WPR promoted the event heavily, including a 30 minute interview with Robert Douglass (Director, Open Goldberg) on "The Midday", a program hosted by Norman Gilliland. Here are photos of Lori Skelton, Jennifer Dargan, Robert Douglass, and Laura Zimmerman.

![The WPR team](/images/P1040859-800x.JPG)
![Robert Douglass in the WPR studio](/images/P1040853-800x.JPG)