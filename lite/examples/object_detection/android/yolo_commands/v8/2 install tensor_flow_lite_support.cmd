echo on
python -m pip install --upgrade pip

python -m pip install torch tensorflow tf2onnx onnx
rem python -m pip install tflite-support
rem python -m pip install tflite_support_nightly
python -m pip install onnx-tf
python -m pip install tensorflow-probability

python -m pip uninstall keras
python -m pip uninstall numpy
python -m pip uninstall protobuf
python -m pip uninstall tensorboard
python -m pip uninstall tensorflow-estimator
python -m pip uninstall tensorflow
python -m pip uninstall absl-py
python -m pip uninstall flatbuffers
python -m pip uninstall tflite-support

python -m pip install "keras<=2.13.1"
python -m pip install "numpy<2.0.0"
python -m pip install "protobuf<=3.20"
python -m pip install "tensorboard<2.17"
python -m pip install "tensorflow-estimator<=2.13.0"
python -m pip install "tensorflow<2.11"
python -m pip install "absl-py<=1.4.0"
python -m pip install "flatbuffers<=2.0.7"
python -m pip install "tflite-support<=0.4.4"


rem python -m pip install --upgrade tensorflow
rem python -m pip install --upgrade mediapipe-model-maker

rem python -m pip install --upgrade keras
rem python -m pip install --upgrade numpy
rem python -m pip install --upgrade protobuf
rem python -m pip install --upgrade tensorboard
rem python -m pip install --upgrade tensorflow-estimator
rem python -m pip install --upgrade absl-py
rem python -m pip install --upgrade flatbuffers
rem python -m pip install --upgrade tflite-support

python -c "import tensorflow as tf; print(tf.config.list_physical_devices('GPU'))"
python -c "import tensorflow as tf; print(tf.reduce_sum(tf.random.normal([1000, 1000])))"

echo Install tensorflow docs:
echo https://www.tensorflow.org/install/pip
python -m pip install tensorflow-2.16.1-cp311-cp311-win_amd64.whl

python -c "import tensorflow as tf; print(tf.config.list_physical_devices('GPU'))"
python -c "import tensorflow as tf; print(tf.reduce_sum(tf.random.normal([1000, 1000])))"

pause
