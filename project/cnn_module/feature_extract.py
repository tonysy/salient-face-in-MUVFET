from __future__ import print_function
import numpy as np
import matplotlib.pyplot as plt
import os
import caffe
import sys
import struct
import h5py
import time

from config import config

def initilize():
    print('Caffe initilize ....')

    sys.path.insert(0, config.CNN.CAFFE_ROOT_DIR + 'python')
    caffe.set_mode_gpu()
    caffe.set_device(config.CNN.GPU_ID)
    net = caffe.Net('./net/128_deploy_feature.prototxt')

    return net

def feature_extract():
    transformer = caffe.io.Transformer({'data': net.blobs['data'].data.shape})
