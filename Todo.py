import flet as ft
from flet_core import Column, MainAxisAlignment


class TodoPage(Column):

    def add_clicked(self, e):
        if self.new_task.value:
            self.list.controls.append(ft.Checkbox(label=self.new_task.value))
            self.new_task.value = ""
            self.new_task.focus()
            self.new_task.update()
            self.page.update()
            # self.page.update()
        else:
            self.page.dialog = self.dlg
            self.dlg.open = True
            self.page.update()

    def __init__(self):
        super().__init__()
        self.controls.clear()
        self.dlg = ft.AlertDialog(title=ft.Text("请输入内容!"), on_dismiss=lambda e: print("关闭提示!"))
        self.new_task = ft.TextField(hint_text="添加想要干的事情", width=300,on_submit=self.add_clicked)
        # self.add_btn = ft.IconButton(ft.icons.ADD, tooltip="添加", icon_color=ft.colors.BLACK87,
        self.add_btn = ft.FloatingActionButton(icon=ft.icons.ADD, bgcolor=ft.colors.LIME_300, on_click=self.add_clicked)
        # // ft.ElevatedButton("Add", on_click=self.add_clicked)
        self.list = ft.Column(alignment=ft.alignment.top_left)
        self.list.controls.append(ft.Checkbox(label='Java'))
        self.list.controls.append(ft.Checkbox(label='Python'))
        self.list.controls.append(ft.Checkbox(label='AI'))
        self.list.controls.append(ft.Checkbox(label='开源项目计划'))

        content = ft.Column([
            ft.Row(controls=[self.new_task, self.add_btn]),
            self.list
        ])
        self.controls.append(content)
