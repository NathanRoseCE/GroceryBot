#!/usr/bin/env bash

# this will build all of the documents from scratch

PLANT_UML=/opt/plantuml/plantuml.jar

cd architecture
cd resources
java -jar ${PLANT_UML} *.uml
cd ..
pdflatex architecture && pdflatex architecture
cd ..
