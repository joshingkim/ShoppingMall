/**
 * 
 */
function uploadedItem(filename) {
	var originalFilename = getOriginalFilename(filename);
	var msg = `
		<div class="uploadeditem col-sm-3">
			<img src="${getImageUrl(filename)}">
			<p class"uploadedItemP"><a target="_blank" href="/file/downloadorshow?linkurl=${getLinkUrl(filename)}">${originalFilename}</a></p>
			<div><button data-filename="${filename}" class="btn btn-danger btn-sm deleteitem">삭제</button></div>
		</div>
	`;
	return msg;
}

function getOriginalFilename(filename) {
	var idx = 0;
	if (checkImageFile(filename)) {
		idx = filename.indexOf("_", 14);
	} else {
		idx = filename.indexOf("_");
	}
	return filename.substring(idx + 1);
}

function getImageUrl(filename) {
	var url = "";
	if (checkImageFile(filename)) {
		url = "/file/displayfile?filename=" + filename;
	} else {
		url = "/resources/img/general_file.png"
	}
	return url;
}

function getImageUrl2(filename) {
	var url = "";
	if (checkImageFile(filename)) {
		filename = getLinkUrl(filename);
		url = "/file/displayfile?filename=" + filename;
	} else {
		url = "/resources/img/general_file.png"
	}
	return url;
}

function getLinkUrl(filename) {
	if (checkImageFile(filename)) {
		var prefix = filename.substring(0, 12);
		var suffix = filename.substring(14);
		filename = prefix + suffix;
	}
	return filename;
}

function checkImageFile(filename) {
	var idx = filename.indexOf("s_");
	if (idx == 12) {
		return true;
	} else {
		return false;
	}
}

function insertFile(filename) {
	var msg = `
		<input type="hidden" name="insertfiles" value="${filename}">
	`;
	return msg;
}

function deleteFile(filename) {
	var msg = `
		<input class="deletefiles" type="hidden" name="deletefiles" value="${filename}">
	`;
	return msg;
}

function uploadedItemForRead(filename){
	var originalFilename = getOriginalFilename(filename);
	var msg =`
		<div class="uploadeditem col-sm-3">
			<img src="${getImageUrl2(filename)}">
			<p><a target="_blank" href="/file/downloadorshow?linkurl=${getLinkUrl(filename)}">${originalFilename}</a></p>
		</div>
	`;
	return msg;
}

function uploadedItemForlist(filename, item_no, item_name){
	var msg =`
		<div class="uploadeditem col-sm-3">
			<img src="${getImageUrl(filename)}">
			<p><a href="/item/read/${item_no}">${item_name}</a></p>
		</div>
	`;
	return msg;
}


