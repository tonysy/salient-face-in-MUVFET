from easydict import EasyDict as edict

config = edict()

config.CNN = edict()
config.MLSTM = edict()

config.CNN.GPU_ID = 0
config.CNN.CAFFE_ROOT_DIR = '/home/syzhang/caffe'
cofnig.CNN.MEAN_FILE_PATH = './cnn_module/data/face_img_mean.npy'
