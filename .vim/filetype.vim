au BufNewFile,BufRead *.groovy  setf groovy
au BufNewfile,BufRead Jenkinsfile setf groovy

if did_filetype() 
   finish 
endif 
if getline(1) =~ '^#!.*[/\\]groovy\>' 
   setf groovy 
endif
