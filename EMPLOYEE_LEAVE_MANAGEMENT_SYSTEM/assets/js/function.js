var inputexampleInputPassword1 = document.getElementById('exampleInputPassword1'),
icon = document.getElementById('icon');

icon.onclick = function () {

 if(inputexampleInputPassword1.className == 'active') {
    inputexampleInputPassword1.setAttribute('type', 'text');
    icon.className = 'fa fa-eye';
   inputexampleInputPassword1.className = '';

 } else {
    inputexampleInputPassword1.setAttribute('type', 'password');
    icon.className = 'fa fa-eye-slash';
   inputexampleInputPassword1.className = 'active';
}

}
