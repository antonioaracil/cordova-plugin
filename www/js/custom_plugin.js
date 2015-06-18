
var CustomPlugin = {
    
    getPlugin : function(success, failure, name, surname){
        cordova.exec(success, failure, "CustomPlugin", "openPlugin", [ name, surname ]);
    }
    
}

module.exports = CustomPlugin;
