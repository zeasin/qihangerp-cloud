'''
关键词收集
'''
import flet as ft
from flet_core import Column, MainAxisAlignment
import sqlite3
import datetime
class KeyWordCollectPage(Column):

    def add_clicked(self, e):
        if self.new_task.value and self.dd.value:
            self.list.controls.append(ft.Checkbox(label=self.new_task.value + ' - '+ self.dd.value))

            # 插入到数据库
            conn = sqlite3.connect('database.db')
            cursor = conn.cursor()
            keyword = (self.new_task.value,self.dd.value,'',str(datetime.datetime.now()))

            cursor.execute("INSERT INTO key_word_list (word,socure,remark,create_time) VALUES (?, ?, ?,?)", keyword)
            # 执行
            conn.commit()

            # 关闭连接
            cursor.close()
            conn.close()

            self.new_task.value = ""
            self.new_task.focus()
            self.new_task.update()
            self.page.update()
        else:
            self.page.dialog = self.dlg
            self.dlg.open = True
            self.page.update()

    def __init__(self):
        super().__init__()
        self.controls.clear()
        self.dd = ft.Dropdown(
            width=100,
            options=[
                ft.dropdown.Option("淘宝"),
                ft.dropdown.Option("拼多多"),
                ft.dropdown.Option("抖店"),
                ft.dropdown.Option("快手小店"),
                ft.dropdown.Option("小红书"),
                ft.dropdown.Option("京东"),
                ft.dropdown.Option("视频号"),
            ],
        )

        self.dlg = ft.AlertDialog(title=ft.Text("请输入内容!"), on_dismiss=lambda e: print("关闭提示!"))
        self.new_task = ft.TextField(hint_text="输入关键词", width=300,on_submit=self.add_clicked)
        # self.add_btn = ft.IconButton(ft.icons.ADD, tooltip="添加", icon_color=ft.colors.BLACK87,
        self.add_btn = ft.FloatingActionButton(icon=ft.icons.ADD, bgcolor=ft.colors.LIME_300, on_click=self.add_clicked)
        # // ft.ElevatedButton("Add", on_click=self.add_clicked)
        # self.list = ft.Column(alignment=ft.alignment.top_left)
        self.list = ft.ListView(expand=1, spacing=5, padding=10, auto_scroll=True)

        # 读取数据库数据
        conn = sqlite3.connect('database.db')
        cursor = conn.cursor()
        # 执行查询语句
        cursor.execute('SELECT id,word,socure,remark,date(create_time) FROM key_word_list order by id desc LIMIT 0,10;')
        results = cursor.fetchall()
        # 遍历结果
        for row in results:
            print(row)
            print(row[1])
            l = row[1]+' - '+row[2] +'['+row[4]+']'
            # self.list.controls.append(ft.Checkbox(label=l))
            # lt = ft.ListTile(
            #     leading=ft.Icon(ft.icons.SETTINGS),
            #     title=ft.Text(l),
            #     selected=True,
            # ),
            self.list.controls.append(ft.ListTile(
                            title=ft.Text(l),
                        ))
            # self.list.update()
            # self.page.update()
        # 关闭连接
        cursor.close()
        conn.close()
        # self.list.controls.append(ft.Checkbox(label='Java'))
        # self.list.controls.append(ft.Checkbox(label='Python'))
        # self.list.controls.append(ft.Checkbox(label='AI'))
        # self.list.controls.append(ft.Checkbox(label='开源项目计划'))

        content = ft.Column([
            ft.Row(controls=[self.dd,self.new_task, self.add_btn]),
            ft.Container(self.list)

        ])
        self.controls.append(content)

