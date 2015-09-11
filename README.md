Elastic.io buildpack for Gradle components
=========================

## Usage

1. Component should have component.json file and one of files - build.gradle, settings.gradle or gradlew
2. This buildpack will generate a folder with this structure: 

src/  
build/  
lib/  
sailor-jvm/    
...../src   
...../build         
...../lib    
component.json  
sail.sh  
  
sail.sh will contain the following command:  

java -cp ./build/classes/main:./lib/*:./sailor-jvm/build/classes/main/:./sailor-jvm/lib/* io.elastic.sailor.Sailor

## Testing locally

``sh
bin/compile /tmp/buildpack_tmp/build/ /tmp/buildpack_tmp/cache/ /tmp/buildpack_tmp/env/
``
