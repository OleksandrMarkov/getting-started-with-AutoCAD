(DEFUN c:cube_fun2 (/ p1 p2 p3 p4 p5 p6 p7 p8)
(setq side 150)
  
(setq p1 (getpoint "\nSpecify a base point: "))
(setq p2 (polar p1 0 side))
(setq p3 (polar p2 (/ pi 2) side))
(setq p4 (polar p3 pi side))

(setq p5 (polar p1 (/ pi 4) side))
(setq p6 (polar p2 (/ pi 4) side))
(setq p7 (polar p3 (/ pi 4) side))
(setq p8 (polar p4 (/ pi 4) side))

(setq osm (getvar "osmode"))
(setvar "osmode" 0)

(command "_line" p1 p2 p3 p4 p1 "")
(command "_line" p5 p6 p7 p8 p5 "")
(command "_line" p1 p5 "")
(command "_line" p2 p6 "")
(command "_line" p3 p7 "")
(command "_line" p4 p8 "")

(setvar "osmode" osm)
)