---@meta

---
---@class http
---* http's entry class.
---
http = {}

---
---@env SHARED
---@param url string
---@param headers table "EX: { METHOD = 'GET' }"
---@param callback function "fun(hasErrored: boolean, data: string): void"
---* Queries the internetz using fetch.
---* By default it uses the method GET.
---* Available methods: DELETE, POST, GET, PUT, HEAD, OPTIONS, PATCH
---
function http:fetch(url, headers, callback) end
