---
aliases:
  - foundation model
---

> [!summary]
> *Instead of labeling data by hand and training one model for one application, you tell your foundation model to go read a bunch of unalbeled data and understand it, then with this ground knwoedge we can have one foundation model for several applicaitons. You end up with a large versatile model with more human-like capabilities.* 


A [[Strong AI]] Concept

**Definition**: Large-scale [[neural networks]] serving as a base for multiple applications. Instead of training models from scratch, foundation models are fine-tuned for specific applications.

**Training Characteristics**:
    - **Huge Amount of Data**: Gigabytes to petabytes.
    - **Unsupervised Learning**: No need for manual annotation.
    - **Unstructured Data**: Models learn from vast amounts of text and other unstructured data.

## Paradigm Shift in AI

- **Old Approach**: Training one model per dataset for a specific function ([[Weak AI|Narrow AI]]).
- **New Approach**: Singular foundation models can drive multiple use cases and applications, replacing the need for several independently trained models ([[Strong AI]]).

## Advantages

- **Performance**: Extensive data exposure provides contextual understanding.
- **Efficiency**: Saves time and resources.
- **Accuracy**: Better predictions.
- **Versatility**: Adaptable to various tasks like language translation, content generation, and image recognition.
- **Small Data Training**: Effective even with incomplete data (e.g., editing a choppy email).

## Disadvantages

- **Computing Cost**: Expensive to train and run, requiring multiple GPUs.
- **Trust Issues**: Training data may contain unvetted, discriminatory, or false information. Efforts are ongoing to produce more reliable training data.

## Types of Models

- **Language Models**: Large Language Models (LLMs) like ChatGPT.
- **Vision Models**: DALLE-2 for image generation.
- **Scientific Models**:
    - Biology: Predicting protein folding for medicine development.
    - Geology: Developing climate change technologies.
- **Audio Models**: For processing and generating audio.
- **Code Models**: Copilot for coding assistance.

## Fine-Tuning

- **Process**: Foundation models can be fine-tuned with a small amount of labeled data to perform traditional supervised learning tasks.

## Prompting

- **Definition**: Asking the model questions instead of training it on new data.