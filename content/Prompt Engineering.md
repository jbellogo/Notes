---
aliases:
  - prompting
  - prompt engineering
---
> [!quote] _An expert knows all the answers if you ask the right questions._


```
Prompt: Write a poem about a cat in the style of a gangsta rapper.

Output:

Yo, I'm a cat, and I'm here to say,

I'm the coolest cat around today.

I got fur so soft and eyes so green,

And I'm the best hunter you've ever seen.

You now have a poem, about a cat, which is creative and funny!
```
# Prompt Engineering

Something that sounds boring but is actually super valuable so learn it well.

The goal is ot ensure they align with goals and expectations. 

## Concept

Prompt engineering is the process of designing prompts that optimize the response of [[Generative AI|generative AI]].

We aim to:

- Avoid [[Hallucinations]] and other [[Generative AI#Limitations|limitations]].
    
- Provide clear, context-rich, and expectation-driven instructions.
    

Prompt engineering is more than just asking the right question. It involves:

- Framing the question with the right context.
    
- Providing relevant information.
    
- Clearly defining the expected outcome.
    

**Example of an engineered prompt:**

```
The captain of a ship is planning a strategic voyage in the Atlantic Ocean (context). To help the captain navigate effectively, provide weather forecasts for the upcoming week from August 28, 2023, to September 1, 2023 (instructions).

The forecast should include:
- Expected precipitation
- Probability of storms
- Wind conditions
- Temperature
- Humidity (expectations).

The coordinates of the target location are between 20°N–30°N latitude and 40°W–20°W longitude.
```

---

## Essential Principles

### 1. Clarity

- Avoid jargon and complex terms.
    
- Provide explicit and structured instructions.
    

### 2. Context

- Include relevant background information.
    
- Establish a ground truth to minimize errors.
    

### 3. Role-playing / Persona

- Assume a specific role for more tailored responses to introduce a sense of charachter driven context and perspective.
    
- Example: "You are a career advisor specializing in helping new grads find jobs."
    
- Helps avoid generic responses.
    

**Naïve prompt:**

```
What is the best way to get fit?
```

**Optimized prompt:**

```
Acting as a fitness expert, provide a detailed, step-by-step guide for an out-of-shape beginner to lose weight and build strength.
```

### 4. Precision

- Be specific and use examples.
    
- Instead of: "Describe an alien planet."
    
- Try: "Provide a detailed description of an alien planet’s flora and fauna, including sky color and unfamiliar sounds. Express emotions like curiosity and apprehension."
    

**Correct vs. Incorrect Prompts:**

> [!tip] The devil is in the details.

❌ **Bad:** "Rich man's story from a small town, his struggles, and achievements." 

✅ **Good:** "Write a short story about a farmer who became a wealthy and influential businessman within ten years, detailing his struggles and achievements."

### 5. Structure of a Well-Constructed Prompt

1. **Instructions**: Clearly define the task.
    
    - Example: "Write a 600-word essay on child obesity in the U.S., emphasizing increased rates, consequences, and a cautionary tone."
        
2. **Context**: Provide background information.
    
    - Example: "Jiu-jitsu is a martial art that focuses on grappling and submissions. Based on this, how should an AI be trained to fight using jiu-jitsu techniques?"
        
3. **Input Data**: Specify the data provided.
    
    - Example: "You have been given dataset X. Analyze it and extract trends in Y."
        
4. **Output Indicators**: Define expectations for evaluation.
    
    - Example: "The output should be a 600-word essay, assessed using the attached rubric."
        

---

## Prompts vs. Questions

A **prompt** sets up context and expectations, while a **question** seeks direct answers.

**Example Prompts:**

- "We are about to launch our latest mobile range. Create a tweet to generate excitement for MobiZ10, which will revolutionize the mobile industry."
    
- "Respond cheerfully to all my questions."
    
- "You are a travel agent assistant."
    

**Proposed Structure for Priming Models:**

```json
[Description of task] [Relevant data] [Optional example]
```

**Example:**

```
Translate English to Spanish: "Infusing Generative Artificial Intelligence into business-driven operations is the need of the hour."
(For example, "My name is Sujan." in Spanish is "Mi nombre es Sujan.")
```

---

## Tools for Prompt Engineering

These tools help refine prompts, improve context awareness, and mitigate biases in AI responses.

### Prompt Engineering Tools:

- **IBM Watsonx Prompt Lab** – Generates prompts tailored to specific needs.
    
- **Spellbook** – AI-assisted prompt crafting.
    
- **Dust** – Helps structure and refine prompts.
    
- **GitHub Prompt Engineering Repository** – Community-driven resources.
    
- **OpenAI Playground** – Experiment with prompt variations.
    
- **Playground AI** – Test text prompts for generating images.
    
- **LangChain** – Python library for building and chaining prompts.
    
- **PromptBase** – A marketplace for buying and selling optimized prompts.
    

---

##  Techniques


### Interview Pattern
Structuring prompts like interview questions for better responses.


- You also ask it to assume a role ask questions before giving an asnwer. So you can tell it what function to take, a function that takes inputs to maximisze outputs. 
	- imagine you are a seasoned travel agent giving advise as a chatbot. before ansering their questions ask about their prefered destinations, and for any other relevant information that might help you book a customers perfect itinerary for his needs. 
	- "ask followup questions as well"
- [[NLP]] idea: questions are text functions. they map complex inputs and patterns and stochastic processea and are just a one up abstractions of sets and relations between them

 Examples:
 
 ```
 ------------ My premise.
 You will act as a fitness expert who is current with the latest research data and provide very detailed step-by-step instructions in reply to my queries. You will interview me, asking me all the relevant questions necessary for you to generate the best possible answer to my queries.

------------- My directive
Create a gym workout program to lose weight and build strength.


------------- gpt-4o-mini 

To create an effective gym workout program for losing weight and building strength, I need to gather some information about your current fitness level, preferences, and goals. Please answer the following questions:

1. **What is your current fitness level?** (Beginner, Intermediate, Advanced)
2. **How many days per week can you commit to working out?**
3. **Do you have any injuries or health conditions that I should be aware of?**
4. **What type of workouts do you enjoy?** (e.g., weightlifting, cardio, HIIT, classes)
5. **What is your current weight and height?** (This will help in estimating your caloric needs)
6. **What is your target weight or goal?**
7. **Do you have access to specific gym equipment?** (e.g., free weights, machines, cardio equipment)

Once I have this information, I can create a tailored workout program for you!

------------------ My answer -----------------

intermediate fitness level. I love freestyle wrestling so I would like a workout based around compound movements and functional strenght so as to supplement my wreslting. I can commit 2 days a week for 2 hours each session. No injuries. want to loose about 10lbns of fat and gain 15 of muscle, you can help me with a realistic timeline for that: I weight 76kg and 173 cm tall, I am 25 years old.

Thank you for the information! Based on your intermediate fitness level, commitment to two workouts per week, and your goals of losing fat while gaining muscle to supplement your wrestling, I will create a tailored workout program focusing on compound movements and functional strength.

------------- gpt-4o-mini 

### Timeline

Losing 10 pounds of fat while gaining 15 pounds of muscle is an ambitious goal. A realistic timeline for fat loss is about 1-2 pounds per week, which means it could take around 5-10 weeks to lose the fat. Gaining muscle, especially 15 pounds, can take several months (typically 3-6 months) depending on diet, training intensity, and recovery.

### Workout Program Overview

You will perform two sessions per week, focusing on full-body workouts that include compound movements. Each session will consist of:

- **Warm-up** (10-15 minutes)
- **Strength Training** (60-75 minutes)
- **Cool Down** (5-10 minutes)

### Sample Workout Schedule

#### Day 1: Strength and Functional Training

1. **Warm-up**: Dynamic stretches and light cardio (e.g., jogging, jumping jacks)
2. **Compound Movements**:
    - Squats: 4 sets of 8-10 reps
    - Deadlifts: 4 sets of 6-8 reps
    - Bench Press: 4 sets of 8-10 reps
3. **Functional Strength**:
    - Pull-Ups: 3 sets of 6-8 reps (or assisted pull-ups)
    - Push-Ups: 3 sets to failure
    - Plank: 3 sets of 30-60 seconds
4. **Cool Down**: Stretching and mobility exercises

#### Day 2: Strength and Conditioning

1. **Warm-up**: Dynamic stretches and light cardio (e.g., jump rope, high knees)
2. **Compound Movements**:
    - Overhead Press: 4 sets of 8-10 reps
    - Bent-Over Rows: 4 sets of 8-10 reps
    - Lunges: 4 sets of 10 reps per leg
3. **Conditioning**:
    - Circuit (3 rounds): 30 seconds each of burpees, kettlebell swings, and mountain climbers with 1-minute rest between rounds
4. **Cool Down**: Stretching and mobility exercises

### Nutrition and Recovery

To support your goals, focus on a balanced diet rich in protein, healthy fats, and complex carbohydrates. Ensure you are in a slight caloric deficit for fat loss while consuming enough protein to facilitate muscle gain. Consider consulting with a nutritionist for personalized meal plans. Additionally, prioritize recovery through adequate sleep and hydration.

Let me know if you have any questions or if you'd like adjustments to the program!
```

    
### Chain-of-thought
- strenghtnes the cognitive abilities of [[Generative AI|generative AI]] models. 
- solicits a step-by-step thinking process.
- Trains the model with the logic behind solving a problem that can be aplied to solve other similar problems. 
The prompt insclues the qeustion and an accurate solution to the question: a label. 

This can be useful for even smaller tasks that require some key context, like logic and math. If you just ask it a simple elementary  math problem, say one about Johne Gauss's watermelons,  its logic might go off the rails! 

For example, feeld both of the following queation and solution to the model. 

```
Question: Mary has 8 radishes. She used 5 radishes to prepare the dinner. The next morning, she bought 10 more radishes. How many radishes does she have now?

Solution: Mary had 8 radishes. She cooke dinner using 5 of them so, she had 8-5=3 radishes left with her. the next morning, she bought 10 more. So, she has 3+10=13 radishes now. 

<<<Another questions that can be solved using the same chain of logic>>>
```

### Tree-of-Thought
- expand capabilities of chain-of-thought 
- enables [[Generative AI|generative model]] to demonstrate aadvanced reasoning capabilities. 
- Involves hierarchically structuring a prompt or query akin to a a [[Tree]]

Working behind the approach.
* Involves generating multiple lines of thorught, resembling a decision tree. 
* Allows the odel to evaluate and pursue multiple paths simulataneously.

```
PROMPT INSTRUCTUONS
Imagine three different experts answering this question. All experts will write down 1 step of their thinking, and then share it with the group. Then all experts will go on to the next step, etc. If at any point, any expert realizes they are wrong, then they leave. 
```

This will make the model, explore patterns that may or may not be there... might encourage creativity. 


### Prompting Techniques

* Task specification 
* contextual guidance 
* domain expertise
* bias mitigation
* framing 
* user feedback loop

- **Zero-shot prompting** – Directly asking AI a question without examples.
- User Feedback loop. privide feedback on text prompts and iteratively refine them until the desired state is achieved. so you are giving the reinforcement yourself to the model and fine tunning its response to your needs.  
    
- **Few-shot prompting** – Providing a few examples to guide AI behavior. the demonstrations act as conditioning for subsequent tasks. 

Benefits of using text prompts effectiveley:
* Explainability: how well you can understand and interpret the models decision-making process... there is conditioning and reinforcement that you can perform on the LLMs responses, you can also prompt it to be creative, to follow some rules... it can act as several different functions, in a way. it doesns tjust classify, it learns.... whatever you want ti to learn... in any structure.
    
* Adresses ethical concerns. isnt it it interesting how models reflect distributions, so their first thought should be to speak the voice of the majority.... and we consider those biases... because we are no longer intreted in majorities but in equality, not just unidimensional, but on different fronts: ability, gender, financial, racial... we are all averaging our ideal self out... essentially trying to create one tribe of humans to go out and push the frontiers once more. 
---

## Final Thoughts

Mastering prompt engineering enhances AI interaction, leading to more reliable and valuable responses. By applying clarity, context, role-play, precision, and structure, you can optimize AI-generated content across different domains.




Summary:
- The various techniques using which text prompts can improve the reliability and quality of the output generated from LLMs are task specification, contextual guidance, domain expertise, bias mitigation, framing, and the user feedback loop. 
    
- The zero-shot prompting technique refers to the capability of LLMs to generate meaningful responses to prompts without needing prior training.
    
- The few-shot prompting technique used with LLMs relies on in-context learning, wherein demonstrations are provided in the prompt to steer the model toward better performance.
    
- The several benefits of using text prompts with LLMs effectively are increasing the explain ability of LLMs, addressing ethical considerations, and building user trust. 
    
- The interview pattern approach is superior to the conventional prompting approach as it allows a more dynamic and iterative conversation when interacting with generative AI models.
    
- The Chain-of-Thought approach strengthens the cognitive abilities of generative AI models and solicits a step-by-step thinking process.
    
- The Tree-of-Thought approach is an innovative technique that builds upon the Chain-of-Thought approach and involves structuring prompts hierarchically, akin to a tree, to guide the model's reasoning and output generation.