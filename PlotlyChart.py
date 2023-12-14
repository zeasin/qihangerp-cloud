from flet_core import Column, MainAxisAlignment, Row
import plotly.express as px
from flet.plotly_chart import PlotlyChart
import plotly.graph_objects as go
import matplotlib
import matplotlib.pyplot as plt
from flet.matplotlib_chart import MatplotlibChart

matplotlib.use("svg")


class ChartPage():
    def DrawChart(self):
        x = ['day 1', 'day 1', 'day 1', 'day 1', 'day 1', 'day 1',
             'day 2', 'day 2', 'day 2', 'day 2', 'day 2', 'day 2']

        fig = go.Figure()

        fig.add_trace(go.Box(
            y=[0.2, 0.2, 0.6, 1.0, 0.5, 0.4, 0.2, 0.7, 0.9, 0.1, 0.5, 0.3],
            x=x,
            name='kale',
            marker_color='#3D9970'
        ))
        fig.add_trace(go.Box(
            y=[0.6, 0.7, 0.3, 0.6, 0.0, 0.5, 0.7, 0.9, 0.5, 0.8, 0.7, 0.2],
            x=x,
            name='radishes',
            marker_color='#FF4136'
        ))
        fig.add_trace(go.Box(
            y=[0.1, 0.3, 0.1, 0.9, 0.6, 0.6, 0.9, 1.0, 0.3, 0.6, 0.8, 0.5],
            x=x,
            name='carrots',
            marker_color='#FF851B'
        ))

        fig.update_layout(
            yaxis_title='normalized moisture',
            boxmode='group'  # group together boxes of the different traces for each value of x
        )
        return fig;
    def __init__(self):
        super().__init__()
        # plotly
        # df = px.data.gapminder().query("continent=='Oceania'")
        # fig = px.line(df, x="year", y="lifeExp", color="country")
        # df = px.data.gapminder().query("continent == 'Oceania'")
        # fig = px.bar(
        #     df,
        #     x="year",
        #     y="pop",
        #     hover_data=["lifeExp", "gdpPercap"],
        #     color="country",
        #     labels={"pop": "population of Canada"},
        #     height=400,
        # )
        # labels = ["Oxygen", "Hydrogen", "Carbon_Dioxide", "Nitrogen"]
        # values = [4500, 2500, 1053, 500]
        # fig = go.Figure(data=[go.Pie(labels=labels, values=values)])
        # x = ['day 1', 'day 1', 'day 1', 'day 1', 'day 1', 'day 1',
        #      'day 2', 'day 2', 'day 2', 'day 2', 'day 2', 'day 2']
        #
        # fig = go.Figure()
        #
        # fig.add_trace(go.Box(
        #     y=[0.2, 0.2, 0.6, 1.0, 0.5, 0.4, 0.2, 0.7, 0.9, 0.1, 0.5, 0.3],
        #     x=x,
        #     name='kale',
        #     marker_color='#3D9970'
        # ))
        # fig.add_trace(go.Box(
        #     y=[0.6, 0.7, 0.3, 0.6, 0.0, 0.5, 0.7, 0.9, 0.5, 0.8, 0.7, 0.2],
        #     x=x,
        #     name='radishes',
        #     marker_color='#FF4136'
        # ))
        # fig.add_trace(go.Box(
        #     y=[0.1, 0.3, 0.1, 0.9, 0.6, 0.6, 0.9, 1.0, 0.3, 0.6, 0.8, 0.5],
        #     x=x,
        #     name='carrots',
        #     marker_color='#FF851B'
        # ))
        #
        # fig.update_layout(
        #     yaxis_title='normalized moisture',
        #     boxmode='group'  # group together boxes of the different traces for each value of x
        # )
        # self.controls.append(Column([PlotlyChart(fig, expand=True)], alignment=MainAxisAlignment.CENTER, expand=False))


        # matplotlib
        # fig, ax = plt.subplots()
        # fruits = ["apple", "blueberry", "cherry", "orange"]
        # counts = [40, 100, 30, 55]
        # bar_labels = ["red", "blue", "_red", "orange"]
        # bar_colors = ["tab:red", "tab:blue", "tab:red", "tab:orange"]
        # ax.bar(fruits, counts, label=bar_labels, color=bar_colors)
        # ax.set_ylabel("fruit supply")
        # ax.set_title("Fruit supply by kind and color")
        # ax.legend(title="Fruit color")
        # self.controls.append(Row([MatplotlibChart(fig, expand=True)], alignment=MainAxisAlignment.CENTER, expand=True))
