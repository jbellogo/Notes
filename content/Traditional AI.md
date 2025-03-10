Traditional Ai at a business level is predictive analytics plus a feedback loop to enable learning.


> [!quote]
> Fool me once, shame on you. Fool me twice, shame on me. 

That's what you want your AI to think. You don't want it to make the same mistakes, if avoidable. 


Traditional AI has a simple architectures:
1. Repository with all your information: data, images, decouments, historical information.
2. Analytics platform.
3. Application: do something with the information*** this is key in business, it's not academia, we tryinna increase shareholder value.
4. Feedback loop (without it, this is not an AI, it's just predictive analytics.)

The flow goes, you analyze somehing from repo in your analytics plat4forma, then apply to your application, and then add a feedback loop, which serves as some type of reinforcement to tune your models based on true observations, say actual customer behaviours. 

Example:
- Say you want to predict churn rates: know which customers are likely to quit your service at the eend of the month. 
- Repository: You look at all existing customer data
- Analytics platform: You train a model that gives you a list of the top 100 customers most likely to churn
- Application: You have a **business plan** for how you will attempt to convince those customers who are predicted to churn to instead stay with your service, this is not something an engineer comes up with, more like marketing, though there might be some numbers: maybe you give them a free month, some dsicount, additional features, reach out to them to try to convince them otherwise, send them a happy brithday champaign bottle or something. 

This is an "old-school" AI approach, it's not real AI, it's just predictive analytics. What makes it AI, is the ability to LEARN. So you need to provide a **feedback loop** from application to repository, where you minimize some type of loss after seeing actual churn numbers. Feedback loop helps you automate the process. It is some machinery that just fires on its own as soon monthly canecllation numbers come out. 
