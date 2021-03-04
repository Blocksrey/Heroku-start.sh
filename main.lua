local curl = require("curl").init()

curl:perform({
	url = "http://example.com";
	postfields = {
		a = 1;
		b = 2;
	};
})

local info = curl:info()

print("Response code: "..info.response_code)
print("Content type: "..info.content_type)