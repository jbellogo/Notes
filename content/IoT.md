---
aliases:
  - Internet of Things
---
The Internet of Things (IoT) is basically about strapping a Raspberry Pi (or similar "edge" device) to a "thing" as well as hardware that will capture data: thermometers, sensors, controls. The device collects data and sends it via the internet to the cloud for **storage** and **analytics**.




How smart thermostats work:
1. Connect to Wi-Fi for remote control via a smartphone or computer. 
2. Learn temperature setting preferences on smarphone app (has client-side network communication protocols [[MQTT]]). 
3. Optimize heating and cooling based on schedules using [[Machine Learning]] learning from your data on preferences and outside conditions.
4. Use smart sensors to detect motion and adjust the temperature


 Edge computing: 
 * Refers to processing data closer to where it is generated, such as on IOT devices, to reduce latency and bandwidth use. 
 - Computing on the edge device ('raspberry pie') it is so called because it is at the edge of the system integrating the local sensors and data collection hardware, and is in charge of forwarding over to the internet.  
 - Use cases include: data processing (calculations, transformations, etc) and some simple AI tasks. 
 - Why do we need it? well its any logic you want to instill in your device so that it takes actions on its own. for one, also by preprocessing data before forwarding it make the transfer and the data acrued in the cloud more polished and valuable. 



