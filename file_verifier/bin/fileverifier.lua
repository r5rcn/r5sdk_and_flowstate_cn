Total = 0
SuccessCount = 0
FailedCount = 0

NotFullyChecked = true

function PrintCompleteMessage()
    if not NotFullyChecked then
    local outputTotal = tostring(Total)
    local outputSuccessCount = tostring(SuccessCount)
    local outputFaildCount = tostring(FailedCount)
    print("验证完成 成功" .. outputSuccessCount .. "失败".. outputFaildCount .."总计".. outputTotal)
    end
end

function ReadFileList()
    -- 打开文件
    local file = io.open("filelist.txt", "r")
    -- 检查文件是否存在
    if file then
        print("文件列表存在 开始验证")
      -- 读取文件的每一行
      for line in file:lines() do
        Total = Total + 1
        -- 传递给文件检测
        CheckThisfile(line)
      end
         -- 关闭文件
         NotFullyChecked = false
         file:close()
         PrintCompleteMessage() --输出统计信息
    else
          -- 文件不存在，输出错误信息
          print("错误 未找到文件列表")
          os.exit()
    end
end

function CheckThisfile(filepath)
 local path = "../"..filepath --转换为相对路径
 local file = io.open(path, "r")
if file then --检查这个文件是否存在
 SuccessCount = SuccessCount + 1
 io.close(file)
else
 print(filepath .. "丢失")
 FailedCount = FailedCount + 1
end
end


while NotFullyChecked do
    ReadFileList()
end