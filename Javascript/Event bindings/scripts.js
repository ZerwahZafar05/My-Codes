
  var rIndex;

  function remove(r){
    var i=r.parentNode.parentNode.rowIndex;
    document.getElementById('table').deleteRow(i);
  }

  function selectRow() {
    var table = document.getElementById("table");
  
    for (var i = 1; i < table.rows.length; i++) {
      table.rows[i].onclick = function () {
        rIndex = this.rowIndex; 
        document.getElementById("name").value = this.cells[0].innerHTML;
        document.getElementById("gender").value = this.cells[1].innerHTML;
        document.getElementById("age").value = this.cells[2].innerHTML;
        document.getElementById("city").value = this.cells[3].innerHTML;
      };
    }
  }

  function update(){

    var table = document.getElementById("table");
    var name = document.getElementById("name").value;
    var gender = document.getElementsByName("gender");
    var gender_value = null;
    if(gender[0].checked){
        gender_value = gender[0].value;
    }
    else if(gender[1].checked){
        gender_value = gender[1].value;
    }
    var age = document.getElementById("age").value;
    var city = document.getElementById("city").value;
  
    table.rows[rIndex].cells[0].innerHTML = name;
    table.rows[rIndex].cells[1].innerHTML = gender_value;
    table.rows[rIndex].cells[2].innerHTML = age;
    table.rows[rIndex].cells[3].innerHTML = city;

  }

  function add(){

    var name= document.getElementById("name").value;
    var gend = document.getElementsByName("gender");
    var gend_val;
    for(var i = 0; i < gend.length; i++){
        if(gend[i].checked){
            gend_val = gend[i].value;
        }
    }
    var age= document.getElementById("age").value;
    var city= document.getElementById("city").value;

    var table = document.getElementById(table);
    var row = table.insertRow(table.rows.length);
    var cell1 = row.insertCell(0);
    var cell2 = row.insertCell(1);
    var cell3 = row.insertCell(2);
    var cell4 = row.insertCell(3);
    var cell5 = row.insertCell(4);

    cell1.innerHTML = name;
    cell2.innerHTML = gend_val;
    cell3.innerHTML = age;
    cell4.innerHTML = city;
    cell5.innerHTML = <button onclick='remove();'>Remove</button> / <button  onclick='update();'>Update</button>;
    
  }


