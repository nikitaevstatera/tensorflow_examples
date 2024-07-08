from tflite_support.metadata_writers import writer_utils
from tflite_support.metadata_writers import object_detector
from tflite_support.metadata_writers import metadata_info
from tflite_support.metadata_writers import schema_fb

# Set paths
MODEL_PATH = "D:/TEMP/YoloTrain/5_convert_pt_to_tflite/yolov8n_imgsz1024_ep1100.tflite"
OUTPUT_MODEL_PATH = "D:/TEMP/YoloTrain/5_convert_pt_to_tflite/yolov8n_imgsz1024_ep1100_with_metadata.tflite"

# Create the metadata writer object
writer = object_detector.MetadataWriter.create_for_inference(
    writer_utils.load_file(MODEL_PATH),
    input_norm_mean=[0.0],  # Mean normalization value
    input_norm_std=[1.0],   # Standard deviation normalization value
    label_file_paths=["D:/TEMP/YoloTrain/coco8.yaml"]  # Path to the label file
)

# Populate the metadata and associated file to the model
writer_utils.save_file(writer.populate(), OUTPUT_MODEL_PATH)

print(f"Metadata is added to the model and saved to {OUTPUT_MODEL_PATH}")