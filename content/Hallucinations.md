---
aliases:
  - hallucinations
---
> [!tip]
> [[LLMs]]] tend to hallucinate. Underatnding the causes and employing the strategies to minimize them is what trully unlocks the putential of [[Generative AI|generative AI]]

In the [[Generative AI|generative AI]] context. 

What:
- sentnece contradiction: "the sky is red, the sky is blue."
- prompt: "give me a positive review: food was horrible"
- factual: "if you try focus hard, you can start floating"
- nonsensical: teh capital of france is paris, paris is the inspiraion for one of Kanyes song.

Why:
* data quality
* [[LLMs]] reasoning capabilities. 
* Generation methods: 
	* tradeoffs beterrn fleuncy and diversity,  creativity and coherence andaccuracy and novelty that occurr as a direct result from the methods used.
* Input context. the end user  has some control over this with [[RAG]].

### Addressing hallucinations:
* Clear specific prompts. 
	* What happened in WW2? vs summary of WW2 battles, countries, and deahts --> gives it an expectation or an output format.
* Improving quality of training data
* refine algorithms
* establish robust validation processes 