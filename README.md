Elastic.io buildpack for Gradle components
=========================

## Usage

1. Component should have component.json file and one of files - build.gradle, settings.gradle or gradlew
2. This buildpack will generate a folder with this structure: 

src/  
build/  
lib/  
sailor-jvm/  
   /src  
   /build        
   /lib  
component.json  
sail.sh  
  
Sail.sh will have following command: 
java -cp ./build/classes/main:./lib/*:./sailor-jvm/build/classes/main/:./sailor-jvm/lib/* io.elastic.sailor.Sailor
