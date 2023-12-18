import flet as ft
from flet_core import Column, MainAxisAlignment
import sqlite3
import datetime

class DateEventLogsPage(Column):

    def add_clicked(self, e):
        if self.new_task.value and self.date_button.text != '事件日期' and self.date_button.text != '':
            self.list.controls.append(ft.Checkbox(label=self.new_task.value + '[' + self.date_button.text + ']'))

            # 插入到数据库
            conn = sqlite3.connect('database.db')
            cursor = conn.cursor()
            eventlogs = (self.date_button.text, self.new_task.value, str(datetime.datetime.now()))

            cursor.execute("INSERT INTO date_event_logs (date,remark,create_time) VALUES (?, ?, ?)", eventlogs)
            # 执行
            conn.commit()

            # 关闭连接
            cursor.close()
            conn.close()
            self.date_button.text = "事件日期"
            self.date_button.update()
            self.new_task.value = ""
            self.new_task.focus()
            self.new_task.update()
            self.page.update()
            # self.page.update()
        else:
            self.page.dialog = self.dlg
            self.dlg.open = True
            self.page.update()


    def date_picker_change_date(self,e):
        self.date_button.text = str(self.date_picker.value)[0:10]
        self.date_button.update()
        print(f"Date picker changed, value is {self.date_picker.value}")

    # def date_picker_dismissed(self,e):
    #     self.date_button.text = str(self.date_picker.value)[0:10]
    #     self.date_button.update()
    #     print(f"Date picker dismissed, value is {self.date_picker.value}")
    def __init__(self):
        super().__init__()
        self.controls.clear()
        self.dlg = ft.AlertDialog(title=ft.Text("请输入内容!"), on_dismiss=lambda e: print("关闭提示!"))
        self.new_task = ft.TextField(hint_text="输入事件内容", width=300,on_submit=self.add_clicked)
        self.date_picker = ft.DatePicker(
            on_change=self.date_picker_change_date,
        )
        self.controls.append(self.date_picker)

        self.date_button = ft.ElevatedButton(
            "事件日期",
            icon=ft.icons.CALENDAR_MONTH,
            on_click=lambda _: self.date_picker.pick_date(),
        )

        # self.add_btn = ft.IconButton(ft.icons.ADD, tooltip="添加", icon_color=ft.colors.BLACK87,
        self.add_btn = ft.FloatingActionButton(icon=ft.icons.ADD, bgcolor=ft.colors.LIME_300, on_click=self.add_clicked)
        # // ft.ElevatedButton("Add", on_click=self.add_clicked)
        self.list = ft.Column(alignment=ft.alignment.top_left)

        # 读取数据库数据
        conn = sqlite3.connect('database.db')
        cursor = conn.cursor()
        # 执行查询语句
        cursor.execute('SELECT id,date,remark,create_time FROM date_event_logs')
        results = cursor.fetchall()
        # 遍历结果
        for row in results:
            print(row)
            print(row[2])
            l = row[2] + '[' + row[1] + ']'
            self.list.controls.append(ft.Checkbox(label=l))
        # 关闭连接
        cursor.close()
        conn.close()

        # self.list.controls.append(ft.Checkbox(label='Java'))
        # self.list.controls.append(ft.Checkbox(label='Python'))
        # self.list.controls.append(ft.Checkbox(label='AI'))
        # self.list.controls.append(ft.Checkbox(label='开源项目计划'))

        content = ft.Column([
            ft.Row(controls=[self.date_button, self.new_task, self.add_btn]),
            self.list
        ])
        self.controls.append(content)
