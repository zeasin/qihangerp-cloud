import akshare as ak
import pandas as pd
import plotly.graph_objects as go

'''
利用缠论理论处理K线包含关系，生成新K线图
'''
# 获取股票数据
stock_data = ak.stock_zh_a_daily(symbol="sh600354", start_date="20230101", end_date="20240131")

# 初始值为第一天的数据
filtered_data = [stock_data.iloc[0]]

# 处理数据
for i in range(1, len(stock_data)):
    current_low = stock_data.loc[i, 'low']
    current_high = stock_data.loc[i, 'high']
    delete_flag = False

    for j in range(len(filtered_data) - 1, -1, -1):
        previous_low = filtered_data[j]['low']
        previous_high = filtered_data[j]['high']

        if current_low > previous_low and current_high < previous_high:
            delete_flag = True
            break

    if not delete_flag:
        filtered_data.append(stock_data.iloc[i])

# 转换为 DataFrame
filtered_data = pd.DataFrame(filtered_data)

# 打印处理后的数据
print(filtered_data)

# 创建蜡炬图数据
candlestick = go.Candlestick(x=filtered_data['date'],
                             open=stock_data['open'],
                             high=stock_data['high'],
                             low=stock_data['low'],
                             close=stock_data['close'])

# 创建图表布局
layout = go.Layout(title='Stock Candlestick Chart')

# 创建图表对象
fig = go.Figure(data=[candlestick], layout=layout)

# 显示图表
fig.show()