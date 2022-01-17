---@meta

---
---http's entry class.
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class http
http = {}

---
---@ENV SHARED
---@param url string
---@param headers table EX: { METHOD = "GET" }
---@param callback function (hasErrored, data)
---* Queries the internetz using fetch.
---* By default it uses the method GET.
---* Available methods: DELETE, POST, GET, PUT, HEAD, OPTIONS, PATCH
---
function http:fetch(url, headers, callback) end
