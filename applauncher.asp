<%
	dim app
	dim deviceId
	dim platform
	dim url

	app=request.querystring("app")
	deviceId=request.querystring("deviceid")
	platform=request.querystring("platform")
	woid=request.querystring("woid")
	itmid=request.querystring("itmid")

	response.write("<strong>App:</strong><br/>" & app & "<br/>")
	response.write("<strong>DeviceId:</strong><br/>" & deviceId & "<br/>")
	response.write("<strong>Platform</strong><br/>" & platform & "<br/><br/>")

	select case lcase(request.querystring("app"))
		case "uw"
			' utility wizards launcher code
			'url="https://access.utilitywizards.com/default.aspx?deviceid=" & deviceId & "&platform=" & platform
			url="https://access.utilitywizards.com/account/mobilelandingpage.aspx?deviceid=" & deviceId & "&platform=" & platform
			if woid <> "" then
				url = url & "&woid=" & woid
			end if

		case "dd"
			' daily docket launcher code
			url="https://access.dailycourtdocket.com/default.aspx?deviceid=" & deviceId & "&platform=" & platform
			if woid <> "" then
				url = url & "&itmid=" & itmid
			end if
	end select

	response.write("<strong>App Url:</strong><br/>" & url & "<br/><br/><br/><br/>")

	if app <> "" then
		response.redirect(url)
	end if
%>