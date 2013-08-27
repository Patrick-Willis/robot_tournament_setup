PLAYERNAME=patrick_carlos
IP=10.100.84.125
FILENAME=Main

# Java: 
javac $PLAYERNAME/$FILENAME.java

# Scala: 
# scalac -d PLAYERNAME/ PLAYERNAME/FILNENAME.scala

# C#
# gmcs PLAYERNAME/FILNENAME.cs

zip -r $PLAYERNAME.zip ./$PLAYERNAME
curl http://$IP:3000/players --data-binary @$PLAYERNAME.zip
