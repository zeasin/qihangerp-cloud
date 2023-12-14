import logging

import flet as ft
from Home import HomePage
from Todo import TodoPage
# from PlotlyChart import ChartPage
import plotly.graph_objects as go
from flet.plotly_chart import PlotlyChart

from PlotlyChart import ChartPage


def main(page: ft.Page):
    log_format = "%(asctime)s - %(levelname)s - %(message)s"
    logging.basicConfig(filename='app.log', level=logging.DEBUG, format=log_format)
    logging.info('程序启动')
    # content = ft.Column([ft.Text("Body!")], alignment=ft.MainAxisAlignment.START, expand=True)
    content = HomePage()
    def menu_changed(e):
        content.controls.clear()
        print("Selected destination:", e.control.selected_index)
        if e.control.selected_index == 0:
            content.controls.append(HomePage())
        elif e.control.selected_index == 1:
            # content.controls.append(ft.Text("One!"))
            content.controls.append(TodoPage())
        elif e.control.selected_index == 2:
            content.controls.append(ft.Text("Two!"))
            # labels = ["Oxygen", "Hydrogen", "Carbon_Dioxide", "Nitrogen"]
            # values = [4500, 2500, 1053, 500]
            # fig = go.Figure(data=[go.Pie(labels=labels, values=values)])
            fig = ChartPage().DrawChart()
            # fig.show()
            content.controls.append(PlotlyChart(fig, expand=True))
        page.update()

    rail = ft.NavigationRail(
        selected_index=0,
        label_type=ft.NavigationRailLabelType.ALL,
        # extended=True,
        min_width=100,
        min_extended_width=400,
        # leading=ft.FloatingActionButton(icon=ft.icons.CREATE, text="Add"),
        group_alignment=-0.9,
        destinations=[
            ft.NavigationRailDestination(
                icon=ft.icons.HOME, selected_icon=ft.icons.HOME, label="Home"
            ),
            ft.NavigationRailDestination(
                icon_content=ft.Icon(ft.icons.BOOKMARK_BORDER),
                selected_icon_content=ft.Icon(ft.icons.BOOKMARK),
                label="Todo",
            ),
            ft.NavigationRailDestination(
                icon=ft.icons.SETTINGS_OUTLINED,
                selected_icon_content=ft.Icon(ft.icons.SETTINGS),
                label_content=ft.Text("Settings"),
            ),
        ],
        on_change=menu_changed,
        # on_change=lambda e: print("Selected destination:", e.control.selected_index),
    )
    page.title = 'First App'

    page.add(
        ft.Row(
            [
                rail,
                ft.VerticalDivider(width=1),
                content,
            ],
            expand=True,
        )
    )


ft.app(target=main)
