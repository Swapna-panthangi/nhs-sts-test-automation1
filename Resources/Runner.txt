#!bin/bash
robot --name chrome --variable Browser:Chrome --output out/cm.xml --log none --report none $* login
robot --name Firefox --variable BROWSER :Firefox --output out/Fx.xml --log none --report none  $* login
rebot --name Login --outputdir out --output login.xml out/cm.xml out/fx.xml



@echo off
robot --name Firefox --variable BROWSER:Firefox --output out\fx.xml --log none --report none %* SMK_02_Contact_Tracing-Agent
robot --name chrome --variable BROWSER:chrome --log none --output out\ce.xml --report none %*   SMK_02_Contact_Tracing-Agent
rebot --name Login --outputdir out --output login.xml out\fx.xml out\ce.xml