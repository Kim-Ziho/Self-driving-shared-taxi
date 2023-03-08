#### 경로지정
```
$ vi ~/.bashrc
$ source ~/c108/catkin_ws/devel/setup.bash
```
#### roscore 실행
```
$ roscore
```
#### ros bridge 실행
```
$ roslaunch rosbridge_server rosbridge_websocket.launch
```
#### rviz 사용 메뉴얼
```
$ roslaunch velodyne_pointcloud VLP16_points.launch
```
### 파일실행
```
$ roscd [노드명]/scripts
$ chmod +x [실행파일]
$  rosrun [노드명] [실행파일]
```

#### 경로 catkin_ws 에서 catkin_make를 통해 빌드
```
$ cd ~/c108/catkin_ws
$ catkin_make
```

### merge 과정
```
$ git checkout -b feature/test develop
$ git checkout develop 
$ git merge feature/test
$ git push 
```

변경사항 생길때마다 push 먼저 하기  
브랜치 생성후 push  
변동사항있으면 add 후 commit  
pull을 받는 건 일종의 merge 과정  
pull받고 push하기  



### 
rospy.Subsciber(   ,    ,    )
