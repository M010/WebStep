def app(env, start_response):
	query = iter(env['QUERY_STRING'].split('&'))
	data = ''
	for i in query: data += i + '\n'  
	start_response("200 OK", [
		("Content-Type","text/plain"),
		("Content-Length", str(len(data)))
	])
	return  data

