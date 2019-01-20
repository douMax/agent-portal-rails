$(document).ready(function(){
  var fileInput = document.getElementById('document-upload')
  if (fileInput) {
    var docuTitleField = document.getElementById('document_title')
    var msg = document.getElementById('upload-msg')
    fileInput.addEventListener('change', function(e){
    msg.textContent = ''
      var file = e.srcElement.files[0]
      docuTitleField.value = file.name

      if (file.size > 10485760) {
        msg.textContent = "File is too big, please use Dropbox/Google Drive links instead"
      }
      
    })
  }



}) // docu ready

