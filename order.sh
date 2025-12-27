# pre
source /etc/network_turbo
git clone https://github.com/kqcoxn/mddldl
cd mddldl
clear

# train
yolo detect train data=datasets/face/marked/data.yaml model=yolo11n.pt epochs=500 imgsz=640 batch=-1 cos_lr=True patience=100 cache=True

# export
yolo export model=runs/detect/train/weights/best.pt format=onnx imgsz=640 opset=17 simplify=True
