# DellHW Docker Container
Container for Hardware and Firmware Management on DELL Servers with "alien linux" distributions

# IMPORTANT
To use this container, the ipmi modules must be loaded!

# usage
interactive shell:
```bash
docker run --rm --privileged -v /dev:/dev -v /sys:/sys -ti dellhw
```
issue command:
```bash
docker run --rm --privileged -v /dev:/dev -v /sys:/sys -ti dellhw omreport system summary
```


