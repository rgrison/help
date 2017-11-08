


## Unzip your backup
Now that you have downloaded your backup, you can go ahead and unzip it with the following command:



{%include _inlines/Tutorials/common/1970-09-26-manage-backups/code_1970-09-26-manage-backups_unzip-your-backup-tarxvf-v1.md  product = include.product %}




The `-C` option allows you to choose which folder to extract the files to.

If your backup is greater than 250 MB, Cloud 66 will divide it into separate files. In this case, you have to concatenate the parts into a single file before using the command above (unless you are using the Cloud 66 toolbelt).

For example, if we had three files called
file.tar-aa, file.tar-ab and file.tar-ac, we would use the following command: 



{%include _inlines/Tutorials/common/1970-09-26-manage-backups/code_1970-09-26-manage-backups_unzip-your-backup-catfiletar-v1.md  product = include.product %}




This will result in a file called file.tar, which we can now unzip using the command above.
