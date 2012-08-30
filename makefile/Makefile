# EXECUTABLE为目标的可执行文件名，LIBS为需要连接的程序包列表，可以根据具体的项目对其进行修改。
#
EXECUTABLE := example
DEBUG = #-DDEBUG  # 是否Debug版
LIBS := #xxx
# Now alter any implicit rules’ variables if you like, e.g.:
# 修改隐含规则中宏。
CC := gcc
CFLAGS := $(DEBUG)-Wall -O2 -MD
# You shouldn’t need to change anything below this point.
# 下面内容基本上不需要修改。
# 列出工作目录下所有以“.c”结尾的文件，以空格分隔，将文件列表赋给变量SOURCE
SOURCE := $(wildcard *.c)
# 调用patsubst函数，生成与源文件对应的“.o”文件列表。
OBJS := $(patsubst %.c, %.o, $(SOURCE))
# 调用patsubst函数，生成与源文件对应的“.d”文件列表，关于“.d”文件后面会给出说明。
DEPS := $(patsubst %.o, %.d, $(OBJS))
# 对DEPS列表进行处理，删除所有已经存在的项目。
# 这里使用的函数为filter-out，该函数使用两个用空格分割的列表作为参数，其功能是删除第2个列表中所有
# 存在于第1列表的项目。
MISSING_DEPS := $(filter-out $(wildcard $(DEPS)), $(DEPS))
MISSING_DEPS_SOURCES := $(wildcard $(patsubst %.d, %.c, $(MISSING_DEPS)))
# 声明伪目标。
.PHONY : everything deps objs clean veryclean rebuild
# 更新可执行程序，并且为每一个源文件生成或更新一个“.o”文件和一个“.d”文件。
everything : $(EXECUTABLE)
# 为每一个源文件生成或更新一个“.d”文件。
deps : $(DEPS)
# 为每一个源文件生成或更新一个一个“.o”文件和一个“.d”文件。
objs : $(OBJS)
# 删除所有“.o”文件和“.d”文件。
# 命令前的“@”符号表示在执行make命令的时候，不显示这条命令。
clean :
	@rm -f *.o
	@rm -f *.d
# 完全删除，首先执行clean，然后再删除可执行文件。
veryclean : clean
	@rm -f $(EXECUTABLE)
# 完全重建，首先执行veryclean，然后执行everything。
rebuild : veryclean everything
# Makefile文件中的条件语句。
ifneq ($(MISSING_DEPS),)
$(MISSING_DEPS) :
	@rm -f $(patsubst %.d,%.o,$@)
endif
-include $(DEPS)
# addprefix函数包含两个参数：文件前缀和列表，其功能是给文件列表的每一项添加一个前缀。
$(EXECUTABLE) : $(OBJS)
	gcc -o $(EXECUTABLE) $(OBJS) $(addprefix -l,$(LIBS))
