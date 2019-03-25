1 patch 对应打入
2 vendor/3rd_app 复制到对应路径。
	此路径的APP后续还有更新。

		by 韩鹏程

烧录:

完整 
sudo ./upgrade_tool uf /mnt/28disk2T/hpc-dev/rk/rk_eben/rockdev/Image-m11/update.img

元心
boot uboot recovery 

kernel和resource都打包到boot和recovery里面





 编译 
./build_eben.sh

 
 1 需要增加 make update-api 

增加库:

vendor/3rd_App


// 需要验证移除 eben-secure
frameworks/base
device/rockchip/rk3399


// 开机第一屏图片
kernel



// repo 在当目录开分支
cd ../vendor/3rd_App
repo start hpc_dev ./

// 代码提交 

hpc@scm-eben:/mnt/disk2T/hpc/hpc-dev/rk/rk_eben/vendor/3rd_App$ git push rk hpc_dev:rk33/mid/develop  
Counting objects: 287, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (278/278), done.
Writing objects:   6% (18/286), 2.09 MiB | 108.00 KiB/s



注意:
build_eben.sh 

在device/rockchip/rk3399/目录下面

执行repo sync的时候会自动拷贝到根目录

-------------------------------

 操作日志:

 860  cd build/
  861  git st
  862  git branch
  863  cd ..
  864  cd .repo/
  865  ll
  866  vim manifest.xml 
  867  ll manifests
  868  cd manifests/.git/
  869  cat config 
  870  cd ../
  871  cd ../projects/build
  872  ls
  873  cd blueprint.git/
  874  ls
  875  cat config 
  876  cd ..
  877  cd ..
  878  cd ..
  879  ls
  880  cd ..
  881  ls
  882  cd frameworks/base/
  883  git log
  884  cat .git/config 
  885  repo sync ./
  886  git log
  887  git log rk3399_nougat_mid_release.xml
  888  croot
  889  cd .repo/
  890  cd manifests
  891  ll
  892  git log
  893  ls
  894  vim rk3399_nougat_mid_release.xml 
  895  croot
  896  cd vendor/3rd_App/
  897  lls
  898  ls -al
  899  cd ..
  900  ls
  901  mv 3rd_App/ 3rd_App_123
  902  ls
  903  cd ..
  904  ls
  905  repo status
  906  cd RKTools/
  907  git st
  908  git status
  909  repo sync ./
  910  cd ..
  911  cd .repo/
  912  ll
  913  vim manifest.xml 
  914  cd ..
  915  ls
  916  repo sync
  917  ll vendor/
  918  cd vendor/3rd_App_123/
  919  ls -al
  920  cd ..
  921  ls
  922  cd ..
  923  cd .repo/
  924  ls
  925  cd projects/
  926  ls
  927  cd platform_testing.git/
  928  ls
  929  cd ..
  930  cd ..
  931  ls
  932  vim manifest.xml 
  933  cd project-objects/android/rk/platform/vendor/3rd_App.git/
  934  ls
  935  ll
  936  cat config 
  937  git branch
  938  ls
  939  cd ..
  940  ls
  941  croot
  942  ls
  943  ll vendor/
  944  cd .repo/
  945  ls
  946  vim manifest.xml 
  947  vim manifest.xml 
  948  ls
  949  vim project.list 
  950  ll project.list 
  951  cd projects/
  952  ls
  953  cd vendor/
  954  ll
  955  cd 3rd_App.git/
  956  ll
  957  cat config 
  958  git branch
  959  git log
  960  ls
  961  ll
  962  croot
  963  ls
  964  repo sync vendor/
  965  repo sync vendor/3rd_App
  966  repo sync
  967  cd kernel/
  968  git log
  969  croot
  970  cd kernel/
  971  git br
  972  git branch
  973  cd ..
  974  repo sync
  975  cd kernel/
  976  git log
  977  cd ../vendor/
  978  ls
  979  cd 3rd_App
  980  git log
  981  ls
  982  cd ..
  983  ls
  984  cd 3rd_App_123/
  985  ls
  986  ls -al
  987  mv * ../3rd_App
  988  cd ../3rd_App
  989  git status
  990  git branch 
  991  git branch  -a
  992  cd ../../kernel/
  993  git branch
  994  git branch -a
  995  cd ../vendor/3rd_App
  996  ls
  997  repo start hpc_dev ./
  998  git branch
  999  git status
 1000  git add 3rd_App.mk  
 1001  ls EApp/
 1002  git add EApp/
 1003  cd PRC/
 1004  ls
 1005  ls -la
 1006  cd ..
 1007  ls
 1008  git add --help
 1009  cd PRC/
 1010  ls
 1011  mv EOffice ../
 1012  mv EOfficeEntry/ ../
 1013  ls
 1014  cd ..
 1015  ls
 1016  git status 
 1017  git add PRC/
 1018  git status
 1019  git reset 
 1020  git status
 1021  cd PRC/
 1022  ls
 1023  mv HpDaYin/ ../
 1024  cd ..
 1025  ls
 1026  ls
 1027  vim
 1028  ls
 1029  vim 3rd_App.mk 
 1030  ls
 1031  mv HpDaYin/ PRC/
 1032  ls
 1033  git add 3rd_App.mk EApp PRC/
 1034  git status
 1035  git log
 1036  git commit -m "add eben apk.  by hpc"
 1037  git status
 1038  git log
 1039  git push rk rk33/mid/develop 
 1040  git push rk rk/rk33/mid/develop  
 1041  git branch
 1042  git branch -r
 1043  git push rk rk33/mid/develop  
 1044  git push rk hpc_dev:rk33/mid/develop  
