
>[!idea]
[[Generative AI|Generative models]] have [[Generative AI#Limitations|limitations]]. RAG addresses them by first retrieving current, reliable information before generating a response. This ensures answers are evidence-based, improves accuracy.


>[!danger]
> Retrieved information grounds the model but can also constrain it. It enables the model to say "I don’t know" instead of fabricating information. However, in the RAG framework, this may prevent the model from answering queries it could handle without retrieval.



# Retrieval-Augmented Generation (RAG)

==It is an approach to tuning [[Foundation Models]].==

Cutting-edge approach in the field of [[NLP]] that combines the strengths of **retrieval-based** and **generation-based** models. 

Particularly effective** for:
* question answering
* dialogue systems
* content creation.


RAG works through a three-step process. 
1. First, given a query, the model retrieves relevant pieces of information from a predefined corpus or database. 
2. Next, these retrieved documents are used to **augment** the input to the generative model, providing it with additional context. 
3. Finally, the generative model uses both the original query and the retrieved information to generate a response, ensuring that the output is both contextually rich (from predefined corpus) and factually grounded (from [[Foundation Models|foundation model]]). 




### Benefits
Aims to address the various  [[Generative AI#Limitations|limitations]] of [[Generative AI|generative models]] effectively by:
* ==Reduces hallucination== by grounding the generation process in factual and contextually accurate information
* ==mitigating the issue of the knowledge cutoff== through real-time retrieval from up-to-date databases. 
* ==Provides better answers== because  the retrieval step narrows down the information space, enabling the generative component to focus on synthesizing relevant information rather than generating text from scratch.

## Key components

#### Retrieval component
>[!tip]
>The retrieval corpus can be ==open like the internet==, or closed like some collection policies or  some collection of proprietary documents.

>[!tip]
>If you have updated information, instead of retraining the whole model all you have to do is augment your data store.



* ***Function:** The retrieval component of RAG is responsible for searching and extracting relevant information from a large corpus of documents or a knowledge base. 
* **Mechanism:** Typically, this involves using a ==retriever model== like BM25 or dense retrievers based on [[neural networks]] to find the most relevant passages or documents that match a given query.

    
#### Generation component

* ***Function:** The generation component takes the retrieved information and uses it to generate coherent and contextually appropriate responses or text. This is achieved using a generative model like GPT-3 or BERT.
    
    **Mechanism:** The generative model leverages the context provided by the retrieved documents to produce more accurate and relevant outputs, blending retrieval results with its generative capabilities.
    

    

**Implementation of RAG on Google Cloud**

Google Cloud provides:

* Vertex AI: It offers a comprehensive suite for building and deploying machine learning models, including support for RAG frameworks.

* BigQuery: It allows efficient querying and retrieval of large datasets, providing a robust backend for the retrieval component of RAG models.

**Key features of RAG on Google Cloud**

- **Scalability:** Google Cloud's infrastructure ensures that RAG models can handle large-scale data retrieval and processing.
    
- **Integration:** Seamless integration with various data sources and APIs to facilitate comprehensive retrieval capabilities.
    
- **Customization:** Tools and frameworks to customize RAG models according to specific business needs and applications.
    

### **Examples**

Consider a RAG-based system designed to answer questions about historical events. When asked, "What were the key causes of World War II?" the system first retrieves documents or passages from a history database that discusses the causes of World War II. It then generates a comprehensive answer based on this retrieved information, ensuring that the response is both accurate and informative.

**Example use case: Enhancing LLMs with RAG** in [[Business Aplications of AI]]

By integrating RAG with Google Cloud's BigQuery, organizations can bolster the capabilities of their LLMs. For instance, a customer support application can use RAG to retrieve the latest policy documents from a database, ensuring that the LLM's responses are accurate and current.

