(function() {
	 var content = $('.pdf_content'), //get DIV content from JSP and set in variable
	  cache_width = content.width(),
	  a4 = [595.28, 841.89]; // for a4 size paper width and height

	 $('#create_pdf').on('click', function() {
	  $('body').scrollTop(0);
	  //called the function 
	  createPDF();
	 });
	 //create PDF
	 function createPDF() {
		 //message on button click
		 //alert("Downloading...!")
	  getCanvas().then(function(canvas) {
	   var
	    img = canvas.toDataURL("image/png"),
	    
	    //set the type and format for PDF document
	    doc = new jsPDF({
	     unit: 'px',
	     format: 'a4'
	    });
	   doc.addImage(img, 'JPEG', 20, 20);
	   //Name of the Document
	   doc.save('Document.pdf');
	   content.width(cache_width);
	  });
	 }

	 // create canvas object
	 function getCanvas() {
	content.width((a4[0] * 1.33333) - 80).css('max-width', 'none');
	  return html2canvas(content, {
	   imageTimeout: 2000,
	   removeContainer: true
	  });
	 }

	}());