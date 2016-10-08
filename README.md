[![Stories in Ready](https://badge.waffle.io/oguntli/swift-grant-o-meter.png?label=ready&title=Ready)](https://waffle.io/oguntli/swift-grant-o-meter)
# Swift Grant-O-Meter 😠
[![Build Status](https://travis-ci.org/oguntli/swift-grant-o-meter.svg?branch=master)](https://travis-ci.org/oguntli/swift-grant-o-meter)

## What is it 🕵
Grant-O-Meter is an interactive webapp to meter the grumpiness of each user.
Basically users can register themselves and show their grumpiness to the world. Each user will 
be presented on an individual page where the grumpiness is presented to the public.
A large bar chart represents the grumpiness and the users can increase or decrease it by clicking 
(+) or (-) respectively. 

## How does that work 🔧
There is a backend written in swift 3. Additionally some vanillaJS is used to transport and present
the collected data. Everything is persisted in a PostgreSQL database.

## What is it useful for 📰
What ever you want it to use for. It is not yet clear but there are some ideas:

### ⏱Meter the grumpiness of teams and their members for a period of time. 
    
    - ⌛️ Let's say a sprint of a scrum team
    - 📈 By metering the grumpiness we have access to the time stamp and the grumpiness
    - 📊 This data could be used in a retrospective to pin down to an certain event

### 😡 Show people around you when you're not in the most pleasant mood

    - 🚦They might check your Grant-O-Meter status before nagging you 
