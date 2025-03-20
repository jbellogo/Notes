---
aliases:
  - generative AI
  - generative models
  - generative model
---

> [!quote]
>  "An act of creation often inspires wonder."

Pertains to models and algorithms specifically crafted to generate new content. 

Unlike traditional [[Traditional AI]], which analyzes data and makes predictions, generative AI creates new content from scratch like text, music, images, videos.

Unimodal and multimodal on data types models. 
Unimodlas: handle inputs from one modality and produces in same modality
Multimodal: ow

# Architecture

Outside of your oganization: ie chatGPT trained by google.

1. Start with data from Earth. Massive and massive amounts of data that may not have much relevance to the final intended task, its prupose is to serve as ground truth. ie speech, human communication. 
2. Information is used by [[LLMs]]. 
	1. Lotof times don't have the specifics to guide you in your business.
	2. Think about it,  they know how to 'generically' answer an interview question, but it has no idea  about who you are and our specific experieces, to answer this question through your lense. 

Inside of your organization: 
4. . Prompting and tuning layer: you take the LLMs, which are very general models, and make them specific to your business case.
5. Application Layer. Take the AI and apply it to fulfill its specific purpose.
6. Feedback loop for improving model back to the prompting and tunning layer (stage 3).


# Models 
* [[VAEs|Variational Autoencoders]]
* [[GANs]]
* [[Autoregressive models]]
* [[Transformers]]

## Limitations

* INCORRECT ANSWERS of NO SOURCE: They can produce =="[[Hallucinations]]"== or incorrect information that seems logical.  
* OUTDATED ANSWERS: Additionally, these models have a ==fixed knowledge cutoff date==, meaning they lack access to information beyond their last training update, making them outdated for generating current content. 
* They also have ==limited context windows==, which makes them struggle with tasks requiring long-term context or detailed memory over extended conversations or documents. Furthermore, while they can generate fluent and coherent text, they might lack the depth and specificity required for certain queries, especially those needing detailed or specialized knowledge. Finally, generating high-quality text can be computationally expensive and slow, particularly for complex or long-form content. 



# Capabilities

Generative AI can incorporate [[LLMs]] into a larger, more advanced system to perform various advanced tasks like decision making and problem solving.

* Content creation
* [[Chatbots]]
* Generates training data through [[data augmentation]]



# Use cases
## Marketing 
* Personalized advertisements
* Email campaigns
* Social MEdia posts based on individial preferences/behaviours. 
* Platforms:
	* Jasper: generates text for brand voice
	* Rytr: SEO metadata
## Creative fields
* Produce digital art, audio, music, soundtracks for films/videogames
* 1. **AI Art Generators**: Tools like
	* DALL·E, MidJourney, or Stable Diffusion
	* Freepik
	* Adobe Firefly
* many can be integrated as APIs, embedding their capabilities into several software tools. 

The best tool for precise control over style, including specific features like **pose or facial expression**, is **Stable Diffusion**.

### Why?

**Stable Diffusion** allows for **fine-tuned control** using:

- **Text prompts** to describe desired features.
- **ControlNet** to manipulate poses and structures.
- **Inpainting** to modify facial expressions with precision.

#### Explanation of Other Options:

- **Freepik** – A stock image platform, not an AI tool for generation.
- **StyleGAN** – Generates realistic faces but offers less control over pose and expression.
- **DALL-E** – Good for AI-generated art but not as precise as Stable Diffusion for feature control.

## Science
DeepMind:
- predict 3D structure of proteins.
## Product development
* Analyze shopping trends.
* Product idea generation.
* Product design optimization

## Healthcare
* Support physicials by providing tailor treatments
* simulate surgeries 
* produce medical images

## Gaming 
* Generate new game worlds 
* Generate levels, charachters, objects.

## Fashion
* Virtual try-on experiences (like in the Intern this is money)
* Recommend personalized faship choices based on behavior 

## Education
* Customize learning content
* virtual environemnts.
* virtual tutors