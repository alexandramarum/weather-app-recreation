# Weather App Recreation
<img width="200" alt="Screenshot 2025-02-09 at 10 58 25 PM" src="https://github.com/user-attachments/assets/74c23a23-f90b-4ede-9891-696e23b355bd" />

## Overview
This is a UI recreation of Apple's Weather app. I created this to practice writing modular code, so it is split into multiple Views (HeaderView, DayView, DayRowView, WeekView, WeekRowView) and weather data is managed and displayed using models. The most challenging part of this exercise was aligning the 10-Day Forecast rows on account of the days of the week and other elements slightly adjusting the View widths due their different sizes--I solved this using frames, but I am hopeful to learn there is a dynamic way of accomplishing this. Additionally, I am proud to have successfully recreated the temperature range bars in WeekRowView, which are two overlayed RoundedRectangles with random values determining the width and offset of the inner RoundedRectangle in relation to the outer RoundedRectangle.
