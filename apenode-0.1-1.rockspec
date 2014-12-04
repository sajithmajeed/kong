package = "apenode"
version = "0.1-1"
source = {
  url = "git://github.com/Mashape/lua-resty-apenode",
  branch = "master"
}
description = {
  summary = "Apenode, the fastest and most installed API layer in the universe",
  detailed = [[
    The Apenode is the most popular API layer in the world
    that provides API management and analytics for any kind
    of API.
  ]],
  homepage = "http://apenode.com",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.1",

  "luasec ~> 0.5-2",
  "uuid ~> 0.2-1",
  "yaml ~> 1.1.1-1",
  "lapis ~> 1.0.6-1",
  "inspect ~> 3.0-1",
  "luaxml ~> 101012-1",
  "busted ~> 2.0.rc3-0"
}
build = {
  type = "builtin",
  modules = {
    ["apenode"] = "src/main.lua",
    ["apenode.core.access"] = "src/apenode/core/access.lua",
    ["apenode.core.handler"] = "src/apenode/core/handler.lua",
    ["apenode.core.header_filter"] = "src/apenode/core/header_filter.lua",
    ["apenode.core.log"] = "src/apenode/core/log.lua",
    ["apenode.core.utils"] = "src/apenode/core/utils.lua",

    ["apenode.web.app"] = "src/apenode/web/app.lua",

    ["apenode.dao.json"] = "src/apenode/dao/json/factory.lua",
    ["apenode.dao.json.file_table"] = "src/apenode/dao/json/file_table.lua",
    ["apenode.dao.json.base_dao"] = "src/apenode/dao/json/base_dao.lua",
    ["apenode.dao.json.api"] = "src/apenode/dao/json/apis.lua",
    ["apenode.dao.json.application"] = "src/apenode/dao/json/applications.lua",

    ["apenode.plugins.transformations.handler"] = "src/apenode/plugins/transformations/handler.lua",
    ["apenode.plugins.transformations.header_filter"] = "src/apenode/plugins/transformations/header_filter.lua",
    ["apenode.plugins.transformations.body_filter"] = "src/apenode/plugins/transformations/body_filter.lua"
  }
}