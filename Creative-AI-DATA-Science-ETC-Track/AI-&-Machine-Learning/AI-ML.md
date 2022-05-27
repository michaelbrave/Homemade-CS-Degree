Courses about AI, Machine Learning, & other types of AI with a focus on generating content. 

Math for Machine Learning
- https://www.coursera.org/specializations/mathematics-machine-learning

Fast AI
- https://www.fast.ai/



Intro to Artificial Intelligence
- https://www.udacity.com/course/intro-to-artificial-intelligence--cs271

Andrew Ng
- AI for Everyone - https://www.coursera.org/learn/ai-for-everyone
- Machine Learning - https://www.coursera.org/learn/machine-learning
- probably more

University of Helsinki
- https://course.elementsofai.com/

Geoffrey Hinton
- Neural Networks for Machine Learning - https://www.youtube.com/playlist?list=PLoRl3Ht4JOcdU872GhiYWf6jwrk_SNhz9

CalTech - Learning From Data (The Math Behind AI More or Less)
- https://work.caltech.edu/telecourse.html

Georgia Tech
- Knowledge Based AI: Cognitive Systems - https://www.udacity.com/course/knowledge-based-ai-cognitive-systems--ud409 (Projects are better than lectures)
- Introduction to Computer Vision - https://www.udacity.com/course/introduction-to-computer-vision--ud810
- Reinforcement Learning - https://www.udacity.com/course/reinforcement-learning--ud600

IMT Course - Understanding Artificial Intelligence through Algorithmic Information Theory
- https://www.edx.org/course/artificial-intelligence-algorithmic-information-aiai

Book - Daphne Koller - Probabilistic Graphical Models
- https://www.coursera.org/specializations/probabilistic-graphical-models

Berkley
- CS 188 - Atrificial Intelligence - https://www.youtube.com/channel/UCHBzJsIcRIVuzzHVYabikTQ/videos

Introduction to Reinforcement Learning with David Silver
- https://www.deepmind.com/learning-resources/introduction-to-reinforcement-learning-with-david-silver

Tensorflow for Deep Learning
- https://www.udacity.com/course/intro-to-tensorflow-for-deep-learning--ud187


------

Things to Look up, Terms I read somewhere, Things that seem worth defining and writing down, and then understanding at a deeper level / especially in context of generating content:
- Generative Adversarial Networks (GANs)
- Deep Variational Autoencoders (VAEs)
- Long Short-Term Memory (LSTM)
    - mostly used for time-dependent sequential data (e.g., action sequences, agent paths, charts for rhythm)
    - Contextual Bidirectional Long Short-Term Memory (C-BLSTM)
- Deep Learning - defined as neural networks with at least two layers and some nonlinearity
- Reinforcement Learning
- Transformers (like GPT-3)
- Language Models
- Convolutional Neural Networks (CNN)
    - good for images
- Supervised Learning (SL)
    - used as a predictor or quality evaluator or preference screener
- Unsupervised Learning (USL)
- Autoencoders
    - Variational Autoencoder (VAE)
        - NPC role classifier
    - Gaussian Mixture VAE
- Recurrent Neural Network (RNN)
    - communication systems
- Knowledge Graph
- stochastic bi-objective beam search model
    - to identify emotion
- Markov Decision Process (MDP)
    - strategy based deck building
- Fractal network (convo-lutional network with structured skip connections)
- Adversarial Learning (AL)
    - good with 2D arrays like images or sprite tiles
- Conditional Embedding Self-Attention GAN (CESAGAN)
- deep convolutional GAN (DCGAN)
    - was used to make 2D heightmaps
-  token-based oneshot arbitrary dimension generative adversarial network (TOAD-GAN)
- constrained adversarial networks (CANs)
- latent space illumination (LSI)
- Covariance Matrix Adaptation MAP-Elites (CMA-ME)
- a GAN architecture, composed of a branched generator and multiple parallel discriminators
- multi-discriminator GAN
- conditional GAN (cGAN)
- RL as player agent to test against level generator created by GAN
- Evolutionary computation (EC) 
- gradient descent
- evolutionary algorithms such as Neuroevolution of augmenting topologies (NEAT) 
- Deep Learning Novelty Explorer (DeLeNoX)
- latent variable evolution (LVE) 
- Latent Variable approach which combines unsupervised learning in the form of a GAN/VAE with evolutionary computation to search for content in the learned space of a GAN/VAE.
- Compositional Pattern Producing Networks (CPPNs)
- interactive evolutionary computation (IEC)
- Neuroevolution via novelty search
- Latent semantic features of the content, something for DL to measure statistical measures
- Semantic hashing based on autoencoders, to categorize
- deep player behavior modeling (DPBM)
- multi-layer perceptron (MLP)
- Bayes Net



Terms:
Nerfs - seems to be the next big thing, see waymo's usage, also good for turning 2D into 3D
BERT - Transformer based NLP (Big in 2018)
Transformers - compute and data hungry, GPT-3 and Co-Pilot based on this
BLEU Scores - used by NLP researchers
NLP - brittle, requires customization
Speech Processing - currently mostly DL based
Intent Identification & Slot Filling - How Bixby and Siri process things
RL - Reinforcement Learning - used in robotics, uses ML(debated? or usually?) but doesn't always use NLP
Multi-Modal - mathcing vision w text
sensor fusion - 
student - teacher - 
On device AI - look up TVM tech by OctoML
MIT's Han Lab / OMNIML - look it up
(look up Elmo, MT-NLG (Megatron-turing NLG), TuringNLG, Megatron-LM, , Wu Dao, Switch Transformer)
AI's three steps: training (teaching), pruning and inference (predicting by itself.)
Buying pretrained models - https://modelzoo.co/ https://aws.amazon.com/marketplace/solutions/machine-learning/pre-trained-models
data/concept drift - 
Linear Regression - high explainability
Reading comprehension benchmarks - SuperGLUE SQuAD
OODA - Observe Orient Decide Act - some call for this to be replaced with "sense-predict-agree-act", likely different tasks will require different models
types of chips, from Steve Blank
  - Graphics Processing Units (GPUs) - Thousands of cores, parallel workloads, widespread use in machine learning
  - Field-Programmable Gate Arrays (FPGAs) - Good for algorithms; compression, video encoding, cryptocurrency, genomics, search. Needs specialists to program
  - Application-Specific Integrated Circuits (ASICs) – custom chips e.g. Google TPU’s
Spiking Neural Nets (SNN) - different from deep neural nets, for of Neuromorphic Computing, good for pattern finding and sensors
Analog Machine Learning Chips - low power, good for sensors
Clustering - 
Association - 
Dimensionality Reduction - 
Supervised ML - best use case is for prediction like spam detection, sentiment analysis, forecasting
Unsupervised ML - best used for large volumes of new data to gain insights into that data, to find differences and similarities - like anomaly detection, recomendation engines, personas
Reinformenet learning - it's like it figures things out in an environment on it's own gathering it's own data with a win condition (DQN, DDPG, A3C, NAF)
Machine Learning Tree
    - Classical Learning - data and win condition/clear feature
      - Unsupervised - data is not labeled, mostly used for exploratory data analysis
        - Custering - divide by similarity, used for segementation, image compression, analyze and label data, detect abnormal behavior
          - Agglomerative
          - DBSCAN
          - K-Means - good for color seperation, is it green or blue? uses centroids
          - Mean-Shift
          - Fuzzy C-Means
        - Pattern Search / Association - Identify Sequences, rule learning - look for patterns - forcast sales, things bought together, web surfing patterns
          - Euclat
          - Apriori
          - FP-Growth
        - Dimensional Reduction / Generalization - find hidden dependencies, good for recomendation systems, visualizations, topic modeling, similar document search, fake image analysis, and risk management
          - t-SNE - for visualization
          - Principal Component Analysis (PCA)
          - Latent Semantic Analysis (LSA)
          - Singular Value Decompisition (SVD) - can seperate and group documents by data, like seperating a tech article from a health one or a policial one
          - Latent Dirichlet Allocation (LDA)
      - Supervised - data is pre-categorized or numerical
        - Regression - like number predictions, like price of a car or traffic with time of day, used in forecasts, analysis, diagnosis and correlations
          - Linear Regression - straight line graph
          - Polynomial Regression - curved line graph
          - Ridge/Lasso Regression
        - Classification - like predict a category
          - Logistic Regression - it's a classification method, not regression
          - Decisions Trees - used to split data into yes or no questions, gets more specific the deeper it goes, used in places with responsibility like diagnostics, medicine and finances
          - Naive Bayes - the original spam filtering algo, based on word frequency comparisons
          - Support Vector Machines (SVM) - classify and identify, like is it ia plant or an animal kind of thing. Used in anomaly detection
          - K-NN
    - Ensemble Methods - quality is a problem "bunch of trees learning to correct errors of each other" it's like letting hybrid algorithms grow, used for search systems, computer vision and object detection, outdoes most classic algo approaches
      - Stacking - like piping and comparing algos into a final decision algo
      - Bagging - same algo on different subsets of data
        - Random Forest - basically just bagging on decisions trees, used in things like face boxes recognition on a camera, doesn't know the person but knows there is a face there
      - Boosting (Gradient Boosting) - similar to bagging but real data instead of generated? takes the data that failed to process, and make new algos to fix the previous one, it doesn't parallize but it's faster than neural nets. 
        - AdaBoost
        - CatBoost
        - LightGBM
        - XGBoost
    - Reinforcement Learning - no data but we do have an environment, like games, self driving cars, robot vacuums, automated trading
      - Genetic Algorithms - mostly used by students as expiraments
      - Q-Learning - optimize for quality (Q is for quality) maximises it's rewards
      - Deep Q-Network (DQN)
      - A3C
      - SARSA
    - Neural Nets and Deep Learning - complicated data, unclear features, it minimizes error? - replace other algos, object identification, speech recognition and synthesis, style transfer, machine translation
      - Convolutional Neural Networks (CNN)
        - DCNN
      - Recurrent Neural Networks (RNN)
        - LSM
        - LSTM
        - GRU
      - Generative Adversarial Networks (GAN)
      - Autoencoders
        - Seq2seq
      - Perceptrons (MLP)






Non Machine Learning AI Algos: - look up AI Taxonomy
Decision Trees - high explainability, more basic algorithms like A* and Minmax tree, Random Forest, alpha-beta puring with heuristics, quicksort, game-tree search
Expert Systems / Rule-Based Systems - like CLIPS https://clipsrules.net/
Knowledge Based Systems - 
Rational Agend Planning without ML - things like Search, Heuristics, MDP, POMDP
    Search Based Algos - monte carlo tree search
NLP without ML - like Markov Models
Planners - might tehncially count as a decision tree or NLP
Automated Theorem Proving - 
Satisfiability (SAT) and constraint Solving - 
Policiy Iteration - 
Value Iteration - 
Q Learning - 
Production Rule Systems - 
Optical Character Recognition - 
Symbolic regression - 
program synthesis - 
genetic programming - 


Other Terms:
game theory
control theory
operations research
information theory
simulation-based optimization
multi-agent systems
swarm intelligence
statistics


In the course of a normal day, an average person might interact with a dozen different ML-powered apps just using their iPhone.
- Uber/Google Maps/Waze: ETA prediction
- Gmail: Smart Compose & spam filtering
- Instagram/Snapchat/Any camera app: Computer vision
- Siri/Google Assistant: Speech-to-text
- FaceID: Facial recognition
- Facebook/Netflix/All content aggregators: Recommendation engines
- Any banking app: Fraud detection
- even used in cameras to take a photo, or in photoshop to make edits to that photo