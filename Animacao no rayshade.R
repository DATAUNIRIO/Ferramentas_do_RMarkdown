filename_movie = tempfile()

#Finally, you can pass your own set of values to the 
#camera parameters as a vector with type = "custom".

phivechalf = 30 + 60 * 1/(1 + exp(seq(-7, 20, length.out = 180)/2))
phivecfull = c(phivechalf, rev(phivechalf))
thetavec = -90 + 45 * sin(seq(0,359,length.out = 360) * pi/180)
zoomvec = 0.45 + 0.2 * 1/(1 + exp(seq(-5, 20, length.out = 180)))
zoomvecfull = c(zoomvec, rev(zoomvec))

montereybay %>%
  sphere_shade(texture="imhof1") %>%
  plot_3d(montereybay, zscale=50, water = TRUE, watercolor="imhof1", 
          waterlinecolor="white", waterlinealpha=0.5)
#Un-comment the following to run
render_movie(filename = filename_movie, type = "custom", 
             frames = 360,  phi = phivecfull, zoom = zoomvecfull, theta = thetavec)
rgl::rgl.close()
