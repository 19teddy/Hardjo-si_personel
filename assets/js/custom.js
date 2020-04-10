$(function(){
	$(".edit-table tbody td input").on('keydown', function (e) {
		if (e.keyCode == 13) {
			var inputs = $(this).parents("tbody").eq(0).find(":input");
			if (inputs[inputs.index(this) + 1] != null) {
				inputs[inputs.index(this) + 1].focus();
			}
			e.preventDefault();
			return false;
		}
	});
});
