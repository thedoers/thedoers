#target photoshop
var folder = Folder.  selectDialog("Enter path:");
var fileList = folder.getFiles("*.jpg");
var exportFolder = Folder.  selectDialog("Enter export path:");
//fileList = folder.getFiles("*.JPG");
//fileList = folder.getFiles("*.JPEG");
//fileList = folder.getFiles("*.jpeg");

for(i=0;i<fileList.length;i++) {
    var file = fileList[i];
    var namefile = file.name; 
    var namefileblur = namefile.replace(".jpg","_low.jpg");
    //namefileblur = namefile.replace(".JPG","blur.JPG");
    
    var namenewfile = exportFolder + "//" + namefileblur;    
   // alert(namenewfile);
    var docRef = app.open(file);
   /*
    docRef.activeLayer.applyGaussianBlur(10);
    docRef.saveAs(new File (namenewfile), new JPEGSaveOptions());
    app.activeDocument.close(SaveOptions.DONOTSAVECHANGES);	
    */
    var options = new ExportOptionsSaveForWeb();
    options.blur = 2;
    options.quality =0;
    options.format = SaveDocumentType.JPEG;
    docRef.exportDocument(new File (namenewfile), ExportType.SAVEFORWEB,options);
    app.activeDocument.close(SaveOptions.DONOTSAVECHANGES);     
 
 }
