<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel = "stylesheet" type="text/css" href="../css/upload.css" />
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
	<div class="button-align">

		<div class="first-modal">
			<!-- Trigger/Open The Modal -->
			<button class="modal-button" href="#myModal1"><i class='bx bx-upload'></i>Upload File</button>

				<!-- The Modal -->
				<div id="myModal1" class="modal">

				  <!-- Modal content -->
				  <div class="modal-content">
				  	<div class="modal-header">
				      <span class="close">×</span>
				      <h2>Select File to Upload:</h2>
			    	</div>
				    <div class="modal-body">
					<div class="form-body">
					<form action="upload.php" method="post" enctype="multipart/form-data">
				
					<br>
					
					<input type="file" name="fileToUpload" id="fileToUpload" class="custom-file-input">
					<br>
					<br>
					<div class="input-group">
									<label>Remarks</label>
									<input type="text" name="name" value="<?php echo $name; ?>">
								</div>
					<input type="submit" value="Upload Image" name="submit">
					</form>
					     	<br>
					     	<br>
				    </div>
					</div>
				  </div>
				</div>
		</div>

		<div class="second-modal">
			<!-- Trigger/Open The Modal -->
			<button class="modal-button" href="#myModal2">Open Modal</button>

			<!-- The Modal -->
			<div id="myModal2" class="modal">

			  <!-- Modal content -->
			  <div class="modal-content">
			    <div class="modal-header">
			      <span class="close">×</span>
			      <h2>Modal Header</h2>
			    </div>
			    <div class="modal-body">
			      <p>Some text in the Modal Body</p>
			      <p>Some other text...</p>
			    </div>
			    <div class="modal-footer">
			      <h3>Modal Footer</h3>
			    </div>
			  </div>
			</div>	
		</div>

	</div>

	<br>
	<hr>
	<br>

	<div id="tbody">
		<table width="100%">
			<tr>
				<th width="30%" class="">Filename</th>
				<th width="20%" class="">Date</th>
				<th width="30%" class="">Feedback</th>
				<th width="20%" class="">Action</th>
			</tr>
		</table>
	</div>

<script>
// Get the button that opens the modal
var btn = document.querySelectorAll("button.modal-button");

// All page modals
var modals = document.querySelectorAll('.modal');

// Get the <span> element that closes the modal
var spans = document.getElementsByClassName("close");

// When the user clicks the button, open the modal
for (var i = 0; i < btn.length; i++) {
 btn[i].onclick = function(e) {
    e.preventDefault();
    modal = document.querySelector(e.target.getAttribute("href"));
    modal.style.display = "block";
 }
}

// When the user clicks on <span> (x), close the modal
for (var i = 0; i < spans.length; i++) {
 spans[i].onclick = function() {
    for (var index in modals) {
      if (typeof modals[index].style !== 'undefined') modals[index].style.display = "none";    
    }
 }
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target.classList.contains('modal')) {
     for (var index in modals) {
      if (typeof modals[index].style !== 'undefined') modals[index].style.display = "none";    
     }
    }
}
</script>
</body>
<style>
	/* .custom-file-input::-webkit-file-upload-button {
  visibility: hidden;
}
.custom-file-input::before {
  content: 'Select some files';
 
  border: 1px solid #999;
  border-radius: 3px;
  padding: 5px 8px;
  outline: none;
  white-space: nowrap;
  -webkit-user-select: none;
  cursor: pointer;
  text-shadow: 1px 1px #fff;
  font-weight: 700;
  font-size: 10pt;
} */
</style>
</html>