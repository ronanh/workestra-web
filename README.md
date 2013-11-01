Workestra
=========



Development Environment
-----------------------

Pre-Requisites:
* Git
* Virtual Box
* Vagrant

On Host machine
```bash
git clone git@github.com:workestra/workestra-web.git
cd workestra-web
vagrant init
vagrant ssh
```

On VM
```bash
cd /workestra-web
bundle install --without production
foreman start
```

navigate to localhost:3000
