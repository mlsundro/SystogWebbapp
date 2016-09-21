<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="oving2css.css"/>
        <title>Oving 2</title>
    </head>
    <body>
        
        <img class="pics" id="pic1" src="http://www.templera.com/wp-content/uploads/edd/2015/04/Banner-Background-008.jpg" 
             onmouseover="this.src='http://cdn.wallpapersafari.com/22/79/Ozt0dn.jpg'"
             onmouseout="document.getElementById('pic1').src='http://www.templera.com/wp-content/uploads/edd/2015/04/Banner-Background-008.jpg'"/>
        <div class="pics" id="pic2"></div>
        <img class="pics" id="pic3" src="http://www.templera.com/wp-content/uploads/edd/2015/04/Banner-Background-008.jpg" 
             onclick="document.getElementById('pic3').src='http://cdn.wallpapersafari.com/22/79/Ozt0dn.jpg'"
             ondblclick="document.getElementById('pic3').src='http://www.templera.com/wp-content/uploads/edd/2015/04/Banner-Background-008.jpg'"/>
        
        <h1>Spill bondesjakk! </h1>
        <p>
        Her kan to personer spille bondesjakk. Nar
        førstemann (rodt) velger rute, klikker han en gang, og
        nar andremann (gront) velger rute, dobbeltklikker han.
        </p>
        <table id="bondesjakkbrett">
            <tr>
	       <td class="tab"></td>
	       <td class="tab"></td>
	       <td class="tab"></td>
            </tr>
            <tr>
	       <td class="tab"></td>
	       <td class="tab"></td>
	       <td class="tab"></td>
            </tr>
            <tr>
	       <td class="tab"></td>
	       <td class="tab"></td>
	       <td class="tab"></td>
            </tr>
        </table>
        
        <p id="tilJul">Days until christmas</p>
        
        <script>
            var bondesjakkbrett = document.getElementById('bondesjakkbrett');
            bondesjakkbrett.addEventListener('click', function(event) {
                var tableCell = event.target;
                tableCell.classList.toggle('rodtab');
            });
            bondesjakkbrett.addEventListener('dblclick', function(event) {
                var tableCell = event.target;
                tableCell.classList.toggle('gronntab');
            });
        </script> 
        <script>
            var text = document.getElementById("tilJul");
            var today = new Date();
            var christmas = new Date(2016, 11, 24);
            var daysToXmas = Math.ceil((christmas.getTime()-today.getTime())/(1000*60*60*24));
            text.innerHTML = "There are "+daysToXmas+" days until christmas";
            
            if (daysToXmas>90){
                text.classList.add("black");
            } else if(daysToXmas>30){
                text.classList.add("green");
            }else{
                text.classList.add("red");
            }
        </script>
    </body>
</html>
