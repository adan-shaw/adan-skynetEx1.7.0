-- require skynet
local skynet = require "skynet"

-- 初始化函数
function init()
	skynet.error("This is main_ping service.")
end

-- 服务函数
function task()
	while true do
		-- 打印时间戳
		skynet.error("time: " .. math.floor(skynet.time()))
		-- 睡眠一秒
		skynet.sleep(100) 
	end
end

-- 注册初始化函数
skynet.init(init)

-- 启动服务
skynet.start(function()
	skynet.fork(task)
end)
