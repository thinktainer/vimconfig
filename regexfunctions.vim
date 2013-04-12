function CsprojToIIS(projectRoot)
	let l:projects = { "\\AccountManagement\\AccountManagement.csproj" : "", "\\Application_Form\\Application_Form.csproj" : "", "\\BrokerArea\\BrokerArea.csproj" : "BrokerArea", "\\LMS\\LMS.csproj" : "", "\\LMS.MVC\\LMS.MVC.csproj" : "LMS.MVC", "\\UpdateDetails\\UpdateDetails.csproj" : "" }
	for l:project in keys(l:projects)
		let l:proj=a:projectRoot . l:project
		exe ":edit " . proj
		call ReplaceServerPath(l:projects[l:project])
		call IisTrue()
		write
	endfor
endfunction

function ReplaceServerPath(appendString)
  exe "%s /\\(.*DevelopmentServerVPath>\\)\\/*\\(\\S\\+\\)\\(<\\/\\1\\_.*<IISUrl>\\)\\_.*\\(<\\/IISUrl>\\)/\\1\\2\\3http:\\/\\/pfd4546.dfc.local\\/\\2" . a:appendString . "\\4/ce"
endfunction

function IisTrue()
	%s /\(.*<UseIIS>\)\w\+\(.*\)/\1True\2/ce
endfunction

function LogMessage()
	:s /\s\{3}at/\r   at/g
	%s /---/\r/ge
endfunction

function CardServiceMethod()
	%s /\_.*\(CardServer.*ICardServiceContract.*)\)\_.*/\1/
endfunction

function JiraFeature()
	%s /^\(Feature:\?\)\s\+\(.*\)/{color:purple}*\1*{color} *\2*/
	%s/I\s\+as.*/{color:green}\0{color}
	%s/In\ order\ to.*/{color:#FF9900}\0{color}
	%s/\(.*\(I as\|In order to\)\)\@!\(.*\)/{color:blue}\3{color}/
endfunction
