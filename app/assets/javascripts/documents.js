$(document).ready(function(){
  var fileInput = document.getElementById('document-upload');
  if (fileInput) {
    var docuTitleField = document.getElementById('document_title');
    fileInput.addEventListener('change', function(e){
      var fileName = e.srcElement.files[0].name;
      docuTitleField.value = fileName;
    })
  }



}); // docu ready

