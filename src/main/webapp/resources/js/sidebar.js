/**
 * 
 */
function categorylist(category) {
	var msg = `<li class="nav-item">
			<a class="nav-link active text-muted" href="/item/list/${category}/1">
				<span></span>${category}<span class="sr-only"></span>
			</a>
 		</li>`;
	return msg;
}
