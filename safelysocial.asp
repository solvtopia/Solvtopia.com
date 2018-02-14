<%
    'Response.AddHeader "Access-Control-Allow-Origin", "*"

	dim deviceId
	dim platform
    dim action

	deviceId=request.QueryString("deviceid")
	platform=request.QueryString("platform")
    action=request.QueryString("action")

    select case action
        case "log"
            ' logs the call to the database
            Dim cn
            Set cn = Server.CreateObject("ADODB.Connection")
            cn.Open "Provider=SQLOLEDB; Data Source=mssql.solvtopia.com; Initial Catalog=solvtopia_SafelySocial; User Id=solvt_master; Password=9dR00g326d"
            cn.Execute("INSERT INTO CallLog ([DeviceId], [Platform], [CallFrom], [TypeOfEmergency], [Lat], [Lon], [dtInserted]) VALUES ('" & deviceId & "','" & platform & "','" & request.QueryString("n") & "','" & request.QueryString("t") & "','" & request.QueryString("lat") & "','" & request.QueryString("lon") & "', '" & cstr(now()) & "');")
            If cn.errors.count = 0 Then   
                response.Write("true")
            else
                response.Write("false")
            End If

        case "settings"
            ' loginType = phone|[username]
            ' password = password to be entered on initial use
            ' emergencyNumber = phone number to dial after successful shape
            ' numberAction = display|call
            response.write("loginType=phone|password=12345|emergencyNumber=2342073902|numberAction=display")

        case "login"
            ' username can be "phone" to specify the user uses their phone number to login or a username of your choosing
            ' password is specified after the pipe
            response.Write("phone|12345")

        case "map"
            ' maps the gps coordinates to an address
            'https://maps.googleapis.com/maps/api/geocode/outputFormat?parameters

        case "phonenumber"
            ' if the phoneNumberAction is "call" the app will place the call!!
            ' if you just want it to show the number that would be called then specify "display"
            ' returns the emergency number to call
            dim phoneNumber
            select case request.QueryString("t")
                case "police"
                    phoneNumber="3302321134"
                case "fire"
                    phoneNumber="2342073902"
                case "medical"
                    phoneNumber="3"
                case "stranger"
                    phoneNumber="4"
                case else
                    'phoneNumber="7047466482"
                    phoneNumber="2342073902"
            end select
            response.Write("call|" & phoneNumber)
    end select

    ' *****************************************************************************************************
    ' ************************** PUT ALL DEBUG MESSAGES AFTER THIS LINE ONLY!!!! **************************
    ' *****************************************************************************************************

    ' this is added for our response arrays (so we don't jack things up ...)
	response.Write("|<br/><br/><br/>")

    response.write("<strong>DeviceId:</strong><br/>" & deviceId & "<br/>")
    response.write("<strong>Platform:</strong><br/>" & platform & "<br/>")
    response.write("<strong>Action:</strong><br/>" & action & "<br/><br/>")

%>