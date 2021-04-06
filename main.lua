local ffi = require("ffi")

require("curl_h")
local curl = ffi.load("curl")

require("enet_h")
local enet = ffi.load("enet")

require("microhttpd_h")
local microhttpd = ffi.load("microhttpd")

require("civetweb_h")
local civetweb = ffi.load("civetweb")





local ch = curl.curl_easy_init()

local time0 = os.clock()

if (ch) then
	curl.curl_easy_setopt(ch, curl.CURLOPT_URL, "http://example.com")
	curl.curl_easy_setopt(ch, curl.CURLOPT_FOLLOWLOCATION, 1)

	local result = curl.curl_easy_perform(ch)
	if (result ~= curl.CURLE_OK) then
		print("FAILURE:", ffi.string(curl.curl_easy_strerror(result)))
	end

	curl.curl_easy_cleanup(ch)
end

local time1 = os.clock()

