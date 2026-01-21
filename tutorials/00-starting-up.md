# 00: Starting up

Log-in to the RHEL server and make an empty folder in your home:

```bash
cd ~
mkdir Work
cd ~/Work
```

Copy the following repository inside the Work folder:

```bash
cp /mnt/vol_NFS_cadencedata/PROFESORES/JUAN_MONTERO/Work/intel ~/Work/
```

Navigate to the repo:

```
cd intel
```

Review what's in the Makefile:

```
cat Makefile
```

And run the directed testbench:

```
make cpu_tb
```

