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

## MUVFET-Dataset
![Video_class](./Video_class.png)

**Multiple-Face Videos with Eye Tracking fixations (MUFVET)**. All videos in MUFVET
are with either indoor or outdoor scenes, selected from Youtube
and Youku, and they are all encoded by H.264 with
duration varying from 10-20 seconds. Besides, MUFVET
includes two datasets – MUFVET-I and MUFVET-II. These
two datasets are comprised by two non-overlapping groups
of videos, each of which is viewed by totally different subjects.

We think both training and test utilize the fixations of same subjects are not rationale in existing saliency prediction works, despite videos being different. So MUFVET-I is seen as the benchmark for test, while MUFVET-II is used for training.

## Requirements

- Tensorflow
- Keras
- Matlab
- Python 2.7


## Experiments

|     | *Our* | *GT*   | *Xu et al.* | *Jiang et al.* | *GBVS* | *Rudoy et al.* | *PQFT* | *Surprise* | *OBDL* |
| :-- | :--: | :---: | :--------: | :--------: | :-----: | :----: |:----: |:----: |:----: |
| NSS | **4.12** | 4.21 | 3.14 | 0.97 | 1.23 | 1.42 | 0.88 | 0.88 | 1.62
| CC  | **0.74** | 0.77 | 0.61 | 0.29 | 0.33 | 0.36 | 0.22 | 0.21 | 0.30
