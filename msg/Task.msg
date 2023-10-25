std_msgs/Int32 task_id
std_msgs/String[] task_participants # Список всех участников задания
std_msgs/String task_type # Тип задания
std_msgs/String task_description # Описание задания

mission_msgs/Zone[] zones # Список зон в задании
geometry_msgs/Pose[] waypoints # Список путевых точек задания