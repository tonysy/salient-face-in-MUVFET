# Predicting Salient Face in Multiple-face Videos
[![License](https://img.shields.io/badge/license-BSD-blue.svg)](LICENSE)

*Although the recent success of convolutional neural network
(CNN) advances state-of-the-art saliency prediction in
static images, few work has addressed the problem of predicting
attention in videos. On the other hand, we find that
the attention of different subjects consistently focuses on a
single face in each frame of videos involving multiple faces.
Therefore, we propose in this paper a novel deep learning
(DL) based method to predict salient face in multiple-face
videos, which is capable of learning features and transition
of salient faces across video frames. In particular, we first
learn a CNN for each frame to locate salient face. Taking
CNN features as input, we develop a multiple-stream long
short-term memory (M-LSTM) network to predict the temporal
transition of salient faces in video sequences. To evaluate
our DL-based method, we build a new eye-tracking
database of multiple-face videos. The experimental results
show that our method outperforms the prior state-of-the-art
methods in predicting visual attention on faces in multipleface
videos*

## Experiments
| Method | Network | Training Data | Testing Data | Reference | Result |
| :----- | :------ | :------------ | :----------- | :-------: | :----: |
| Fast R-CNN | VGG16 | VOC07 | VOC07test | 66.9 | 66.50 |
| Fast R-CNN | VGG16 | VOC07 | VOC07test | 66.9 | 66.50 |
| Fast R-CNN | VGG16 | VOC07 | VOC07test | 66.9 | 66.50 |
| Fast R-CNN | VGG16 | VOC07 | VOC07test | 66.9 | 66.50 |
| Fast R-CNN | VGG16 | VOC07 | VOC07test | 66.9 | 66.50 |
| Fast R-CNN | VGG16 | VOC07 | VOC07test | 66.9 | 66.50 |
