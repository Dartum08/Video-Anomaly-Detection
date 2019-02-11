# Video-Anomaly-Detection

Anomaly detection is a technique used to identify unusual patterns that do not conform to expected behavior, called outliers. It has many applications in business, from intrusion detection (identifying strange patterns in network traffic that could signal a hack), system health monitoring (spotting a malignant tumor in an MRI scan) to fraud detection in credit card transactions and fault detection
in operating environments.

The dataset contains 70 (30 falls + 40 activities of daily living) sequences. Each row contained sequence of depth and RGB images for camera 0 and camera 1 (parallel to the floor and ceiling mounted, respectively). Source of dataset : http://fenix.univ.rzeszow.pl/~mkepski/ds/uf.html

We used MATLAB and python language in this project to refine and to extract features from raw data, to train data, and for testing new data, etc. The steps of, extracting features from raw data to applying various classification techniques on training data, are given below:

1. We were provided by the frames of videos in dataset which we converted into videos.
2. Then we converted videos to dynamic images.
3. For feature extraction we used dynamic images (Source :https://arxiv.org/pdf/1612.00738). And from dynamic images we extracted Histogram of Oriented Gradients(HOG) features.
4. After extracting features, we split the data into training and testing set in a ratio of 70% and 30% respectively.
5. After preparing the training and testing dataset, we perform various algorithms like SVM, KNN and Alexnet, etc.. 

Accuracy is highest in the case of model trained by alexnet i.e. 95% and lowest in the case of random forest i.e. 90%.

