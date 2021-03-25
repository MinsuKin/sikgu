window.addEventListener("load",function(){
visible();
}); // onload listner end
var name = $('#sikgu_id').val();

var jb = document.getElementById( 'register' );
console.log(name);
console.log($('#sikgu_id'));
console.log($('#sikgu_id').val);
console.log($('#sikgu_id'));
console.log(jb);
console.log(document.getElementById( 'regiID' ));
console.log( $('#regiID'));
console.log(name);
console.log(name);
function visible(){
	if(name != null){
		
		document.getElementById('CustomerInfo').style.visibility='visibile';
	}else{
		
		document.getElementById('CustomerInfo').style.visibility='hidden';
	}
		
};