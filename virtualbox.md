### Shared folders

Attention! Virtial box does not allow symbolic links on host OS as shared folder.
Attention! Virtial box does not allow symbolic links on host OS inside shared folder by default by security reason.

To allow symlinks inside shared foolder do:

```sh
$ VBoxManage setextradata <VM-NAME> VBoxInternal2/SharedFoldersEnableSymlinksCreate/<SHARED_FOLDER> 1
```
