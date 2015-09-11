update_component_json() {
  comp_file="component.json"
  sailor_manifest=$(unzip -p $DEPENDENCIES_DIR/sailor-jvm-*.jar META-INF/MANIFEST.MF)
  sailor_ver=$(ruby -e "require 'yaml';puts YAML.load('$sailor_manifest')['Implementation-Version']")
  echo "Sailor version: $sailor_ver"
  ruby_command="require 'json';"
  ruby_command+="obj = JSON.parse(File.read('$comp_file'));"
  ruby_command+="obj['language'] = 'java';"
  ruby_command+="obj['sailor_version'] = '$sailor_ver';"
  ruby_command+="File.open('$comp_file', 'w'){ |f| f <<  JSON.pretty_generate(obj)};"
  ruby -e "$ruby_command"
}