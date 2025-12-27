# train
yolo detect train data=datasets/face/marked/data.yaml model=yolo11n.pt epochs=500 imgsz=640 batch=-1 cos_lr=True patience=100 cache=True

# export
yolo export model=best.pt format=onnx imgsz=640 opset=17 simplify=True
