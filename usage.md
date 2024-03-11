## Download the latest release

* v0.2.0 -- [does not have the Loadbalancer](https://github.com/AnaisUrlichs/pacman/releases/tag/pacman-0.2.0)
* v0.2.1 -- [has the Loadbalancer in pacman](https://github.com/AnaisUrlichs/pacman/releases/tag/pacman-0.2.1)
* v0.2.2 -- [has the Loadbalancer in pacman and in MongoDB](https://github.com/AnaisUrlichs/pacman/releases/tag/pacman-0.2.2)

e.g. pacman-0.2.0.tgz 

move it into an empty directory and unzip it:
```
tar -zxvf pacman-0.2.0.tgz
```

this will create a new directory `pacman` with the Helm Chart.

And then you can install the Helm Chart with the following command (still in the directory with the `pacman` and the `pacman-0.2.0.tgz`):
```
kubectl create ns pacman

helm upgrade --install pacman ./pacman -n pacman
```
