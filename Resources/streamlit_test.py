import streamlit as st
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt


file_to_load = 'IN_COVID.csv'
covid_df = pd.read_csv(file_to_load)
covid_df['Date'] = pd.to_datetime(covid_df['Date'], format='%b %d %Y')
covid_df.sort_values(by=['Date'], ascending=True, inplace=True)

st.title("Analysis of Indiana's COVID-19 Cases")

st.write("Data - Click on a column to sort")
st.write(pd.DataFrame(covid_df))

st.write("Chart")

x_axis = covid_df['Date']
y_axis = covid_df['New Cases']

fig, ax = plt.subplots()
plt.title('New Cases in Indiana')
plt.xticks(rotation=45)
ax.plot(x_axis, y_axis)

st.pyplot(fig)


