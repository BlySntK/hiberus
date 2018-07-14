<%@page import="java.util.ArrayList"%>
<%@page import="com.marioherrero.musifyproject.bean.Artist"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.quicksearch/2.4.0/jquery.quicksearch.js"></script>
        <title>Musify Proyect by Mario Herrero</title>
    </head>
    <style>
        * {
            background: darkblue;
        }

        #image {
            position: absolute;
            width: 250px;
            height: 100px;
            top: 82%;
            left: 2%;
        }
        
        #artistList {
            position: absolute; 
            left: 9.5%; 
            top: 48%;
        }

        #c {
            position: absolute;
            color: white;
            top: 90%;
            left: 35.5%;
        }

        #b1 {
            background-color: #4CAF50;
            border-radius: 10px 10px 10px 10px;
            color: blue;
            padding: 5px 12px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-left: 25%;
            cursor: pointer;
        }
        #b1:hover {
            box-shadow: 2px 2px 2px 2px black;
            -webkit-animation-name: b;
            -webkit-animation-duration: 0.2s;
            animation-name: b;
            animation-duration: 0.2s;
        }

        #bAsign {
            background-color: #4CAF50;
            border-radius: 10px 10px 10px 10px;
            color: blue;
            padding: 5px 12px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            position: absolute;
            left: 22%;
            top: 480%;
            cursor: pointer;
        }
        #bAsign:hover {
            box-shadow: 2px 2px 2px 2px black;
            -webkit-animation-name: b;
            -webkit-animation-duration: 0.2s;
            animation-name: b;
            animation-duration: 0.2s;
        }

        #b2 {
            position: absolute;
            left: 18%;
            top: 83%;
            background-color: #4CAF50;
            border-radius: 10px 10px 10px 10px;
            color: blue;
            padding: 5px 12px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
        }
        #b2:hover {
            box-shadow: 2px 2px 2px 2px black;
            -webkit-animation-name: b;
            -webkit-animation-duration: 0.2s;
            animation-name: b;
            animation-duration: 0.2s;
        }
        
        #b3 {
            background-color: #4CAF50;
            border-radius: 10px 10px 10px 10px;
            color: blue;
            padding: 5px 12px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
        }
        #b3:hover {
            box-shadow: 2px 2px 2px 2px black;
            -webkit-animation-name: b;
            -webkit-animation-duration: 0.2s;
            animation-name: b;
            animation-duration: 0.2s;
        }
        
        #b4 {
            position: absolute;
            left: 70%;
            top: 83%;
            background-color: #4CAF50;
            border-radius: 10px 10px 10px 10px;
            color: blue;
            padding: 5px 12px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
        }
        #b4:hover {
            box-shadow: 2px 2px 2px 2px black;
            -webkit-animation-name: b;
            -webkit-animation-duration: 0.2s;
            animation-name: b;
            animation-duration: 0.2s;
        }
        

        .WhiteColor {
            color: white;
        }

        #tablaSistema {
            position: absolute;
            top: 89%;
            left: 10%;
            width: 300px;
            height: 300px;
            background: white;
            resize: none;
        }
    </style>

    <body>
        <div style="position: absolute; left: 10%;">
            <form action="/Musify-Project/registerArtist" method="post">
                <h1 style="color: white; margin-left: 20px;"><strong>Artist Register</strong></h1>
                <div>
                    <label class="WhiteColor">ID:</label>
                    <input style="margin-left: 50px; background: white;" type="text" name="id" value="" 
                           placeholder="id artist here"/>
                </div>
                <br/>
                <div>
                    <label class="WhiteColor">Name:</label>
                    <input style="margin-left: 29px; background: white;" type="text" name="name" value="" 
                           placeholder="name artist here"/>
                </div>
                <br/>
                <div>
                    <label class="WhiteColor">Years:</label>
                    <input style="margin-left: 32px; background: white;" type="text" name="years" value="" 
                           placeholder="years in active here"/>
                </div>
                <br/>
                <div>
                    <label class="WhiteColor">Members:</label>
                    <input style="margin-left: 8px; background: white;" type="text" name="member" value="" 
                           placeholder="people member here"/>
                </div>
                <br/>
                <div>
                    <label class="WhiteColor">Style(s):</label>
                    <input style="margin-left: 19px; background: white;" type="text" name="style" value="" 
                           placeholder="style(s) here"/>
                </div>
                <br/>
                <div>
                    <input id="b1" type="submit" name="send" value="Register Artist"/>
                </div>
            </form>
        </div>

        <div style="position: absolute; left: 40%;">
            <h1 style="color: white; margin-left: 20px;"><strong>People Register</strong></h1>
            <div>
                <label class="WhiteColor">ID:</label>
                <input style="margin-left: 40px; background: white;" type="number" name="idPeople" value=""
                       placeholder="id people here" onkeypress="validate(event);"/>
            </div>
            <br/>
            <div>
                <label class="WhiteColor">Name:</label>
                <input style="margin-left: 19px; background: white;" type="text" name="namePeople" value=""
                       placeholder="name people here"/>
            </div>
            <br/>
            <div>
                <label class="WhiteColor">Age:</label>
                <input style="margin-left: 31px; background: white;" type="number" name="agePeople" value=""
                       placeholder="age people here" onkeypress="validate(event);"/>
            </div>
            <br/>
            <br/>
            <br/>
            <div>
                <input id="b2" type="submit" name="send" value="Register People" 
                       onclick="changeStateSystem(); sendToSystem();"/>
            </div>
        </div>

        <div style="position: absolute; left: 65%;">
            <h1 style="color: red" id="system"><strong></strong></h1>
            <div id="tablaSistema">
                <table id="tablaPeople" style="background: white;">
                </table>
            </div>
            <input id="bAsign" type="button" name="asignar" value="Asign to Artist Members" onclick="asingToMembers();"/>    
        </div>
        <script language="javascript">
            var nPeople;
            
            (function () {
            <%
                boolean hayAlgo;
                if (request.getAttribute("people") != null) {
                    hayAlgo = true;
                    request.setAttribute("HayGente", new Boolean(true));
                } else {
                    hayAlgo = false;
                }
            %>
                var people = <%= request.getAttribute("HayGente")%>
                if (people) {
                    $('#system').text("System People Available");
                    $('#system').css({"color": "green", "right": "10%"});
                } else {
                    $('#system').text("System People Not Available");
                    $('#system').css({"color": "red", "left": "12%"});
                }
            })();

            function changeStateSystem() {
                $('#system').text("System People Available");
                $('#system').css({"color": "green", "right": "10%"});
            }

            function asingToMembers() {
                var peoplename = nPeople;
                if (peoplename !== null) {
                    $('#addMember').append(", " + peoplename);
                }
            }

            function validate(evt) {
                var theEvent = evt || window.event;

                // Handle paste
                if (theEvent.type === 'paste') {
                    key = event.clipboardData.getData('text/plain');
                } else {
                    // Handle key press
                    var key = theEvent.keyCode || theEvent.which;
                    key = String.fromCharCode(key);
                }
                var regex = /[0-9]|\./;
                if (!regex.test(key)) {
                    theEvent.returnValue = false;
                    if (theEvent.preventDefault)
                        theEvent.preventDefault();
                }
            }
            
            function sendToSystem () {
                var inputId = $('input[name="idPeople"]').val();
                var inputName = $('input[name="namePeople"]').val();
                var inputAge = $('input[name="agePeople"]').val();
                
                $.ajax({
                    url: '/${home}Musify-Project/registerPeople',
                    type: 'get',
                    data: {"id" : inputId,
                            "name" : inputName,
                            "age" : inputAge},
                    success: function (data) {
                        
                        var array = new Array();
                        array = data.split(",");
                        var table = new Array(
                            "<tr>",
                            "<td style='color: black; background: white;'>Name: " + array[1] + "</td>",
                            "<td style='background: white;'></td>",
                            "<td style='background: white;'></td>",
                            "<td style='background: white;'></td>",
                            "<td style='background: white;'></td>",
                            "<td style='background: white;'></td>",
                            "<td style='background: white;'></td>",
                            "<td style='background: white;'></td>",
                            "<td style='background: white;'></td>",
                            "<td style='background: white;'></td>",
                            "<td style='background: white; color: black;'>Age: " + array[2] + "</td>",
                            "</tr>"
                        );
                        nPeople = namePeople;
                        var i = 0;
                        for (i in table) {
                            $('#tablaPeople').append(table[i]);
                        }                        
                    }
                });
            }
            
            function dropArtist (id) {
                $(document).on('click', '.dropArtist', function (event) {
                    event.preventDefault();
                    $(this).closest('tr').remove();
                    $.ajax({
                        url: '/${home}Musify-Project/dropArtist',
                        type: 'post',
                        data: {"id" : id},
                        success: function () {
                            
                        }
                    });
                });
            }
            
            function searchStyle() {
                var qs = $('input#search').quicksearch('table tbody tr td');
                $.ajax({
                    'type': 'GET',
                    'url': 'musify-dashboard.jsp',
                    'success': function (data) {
                            $('table tbody tr td').append(data);
                            qs.cache();
                    }
                });
            }
        </script>

        <div id="artistList">
            <h1 style="color: white; margin-left: 20%; margin-bottom: 2%;"><strong>Artist List</strong></h1>
            <table border="2px" bgcolor="gray" id="artistas">
                <tbody>
                    <tr>
                        <th style="background: white; color: black;">ID</th>
                        <th style="background: white; color: black;">Name</th>
                        <th style="background: white; color: black;">Years</th>
                        <th style="background: white; color: black;">Members</th>
                        <th style="background: white; color: black;">Style(s)</th>
                    </tr>
                    <tr>
                        <%
                            if (request.getAttribute("artist") == null) {
                            } else {
                                ArrayList<String> tabla = (ArrayList<String>) request.getAttribute("tabla");
                                tabla.add("<tr>");
                                tabla.add("<td id='idParam' style='background: white; color: black;'>" + request.getParameter("id") + "</td>");
                                tabla.add("<td id='nameParam' style='background: white; color: black;'>" + request.getParameter("name") + "</td>");
                                tabla.add("<td id='yearsParam' style='background: white; color: black;'>" + request.getParameter("years") + "</td>");
                                tabla.add("<td id='addMember' style='background: white; color: black;'>" + request.getParameter("member") + "</td>");
                                tabla.add("<td id='searchStyle' style='background: white; color: black;'>" + request.getParameter("style") + "</td>");
                                tabla.add("<td><input type='button' id='b3' value='Drop Artist' class='dropArtist' onclick='dropArtist("
                                        + request.getParameter("id") + ");'/></td>");
                                tabla.add("</tr>");
                                for (int i = 0; i < tabla.size(); i++) {
                                    out.print(tabla.get(i).toString());
                                }
                                session.setAttribute("tabla", tabla);
                            }
                        %>
                    </tr>
                </tbody>
            </table>
        </div>
        <input type="button" id="b4" value="Serach by Style" onclick="searchStyle()"/><input type="text" style="position: absolute; background: white; color: black; left: 80%; top: 84%;" id="search" value="" placeholder="style here"/>
        <img id="image" src="images/hiberus.png"/>

    <footer id="c"><strong>${Author} ${Year}</strong></footer>
</body>
</html>
