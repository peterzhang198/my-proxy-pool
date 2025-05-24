# 使用Python官方镜像（版本3.8）
FROM python:3.8

# 从GitHub下载代码到容器内的/app目录
RUN git clone https://github.com/peterzhang198/my-proxy-pool.git /app

# 设置工作目录（后续操作都在这里执行）
WORKDIR /app

# 安装Python依赖（国内用户替换成清华源加速）
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt

# 容器启动时自动运行主程序
CMD ["python", "main.py"]