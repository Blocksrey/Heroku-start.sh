local curl = require("curl").init()

local time0 = os.clock()

curl:perform({
	url = "http://example.com";
	postfields = {
		a = 1;
		b = 2;
	};
})

local time1 = os.clock()

print(time1 - time0)

local info = curl:info()

print("Response code: "..info.response_code)
print("Content type: "..info.content_type)