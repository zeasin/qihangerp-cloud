from flet_core import UserControl, Column, Row, FloatingActionButton, icons, TextField, Tabs, Tab, Text, \
    MainAxisAlignment


class HomePage(Column):
    def __init__(self):
        super().__init__()
        self.controls.clear()
        self.controls.append(Column([Text("Body!")], alignment=MainAxisAlignment.START, expand=True))