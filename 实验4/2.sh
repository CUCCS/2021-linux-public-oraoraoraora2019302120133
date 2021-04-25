#!/usr/bin/env bash
# TODO: May need a new dir to hold the results,conveniently for retrieve

function Help(){
    echo "-q Q               对jpeg格式图片进行图片质量压缩 质量因子为Q"
    echo "-r R               对jpeg/png/svg格式图片在保持原始宽高比的前提下压缩分辨率 R"
    echo "-w font_size text  对图片批量添加自定义文本水印"
    echo "-p text            批量重命名：统一添加文件名前缀，不影响原始文件扩展名"
    echo "-s text            批量重命名：统一添加文件名后缀，不影响原始文件扩展名"
    echo "-t                 将png/svg图片统一转换为jpg格式图片"
    echo "-h                 帮助文档"
}

# 对jpeg格式图片进行图片质量压缩
# convert filename1 -quality 50 filename
function QualityCompressed {
    Q=$1  ##质量因子
    for i in *;do
        type=${i##*.}    ##获得文件类型
                if [[ ${type} == "jpg" || ${type} == "jpeg" || ${type} == "JPEG" ]];then 
            convert "${i}" -quality "${Q}" "${i}"
            echo "${i} 完成质量压缩任务"
        fi
    done
}

# 对jpeg/png/svg格式图片在保持原始宽高比的前提下压缩分辨率
function ResolutionCompressed {
    R=$1
    for i in *;do
        type=${i##*.}
        if [[ ${type} == "jpg" || ${type} == "png" || ${type} != "svg" || ${type} == "jpeg" || ${type} == "JPEG" ]]; then
            convert "${i}" -resize "${R}" "${i}"
            echo "${i} 完成分辨率压缩任务"
        fi
    done
}

# 对图片批量添加自定义文本水印
function AddCustomTextWatermark {
    for i in *;do
        type=${i##*.}
        if [[ ${type} != "jpg" && ${type} != "png" && ${type} != "svg" && ${type} != "jpeg" && ${type} != "JPEG" ]]; then continue; fi;
        convert "${i}" -pointsize "$1" -fill blue -gravity center -draw "text 10,15 '$2'" "${i}"
        echo "${i} AddCustomTextWatermark $2 已添加完成"
    done
}

#  批量重命名：统一添加文件名前缀，不影响原始文件扩展名
# mv filename1 filename2
prefix() {
    for filename in $(ls);do
        
        mv "${filename}" "$1${filename}"
        echo "${filename} is renamed to $1${filename}"
        
    done
}
#  批量重命名：统一添加文件名后缀，不影响原始文件扩展名
# mv filename1 filename2
function AddSuffix {
    for i in *;do
        type=${i##*.}
        if [[ ${type} != "jpg" && ${type} != "png" && ${type} != "svg" && ${type} != "jpeg" && ${type} != "JPEG" ]]; then continue; fi;
        newname=${i%.*}$1"."${type}
        mv "${i}" "${newname}"
        echo " ${i} 已添加后缀 ${newname} "
    done
}

# 将png/svg图片统一转换为jpg格式图片
function ImageTransition_jpg {
    for i in *;do
        type=${i##*.}
        if [[ ${type} == "png" || ${type} == "svg" ]]; then
            newname=${i%.*}".jpg"
            convert "${i}" "${new_filename}"
   	        echo " ${i} 已转换为 ${new_filename} "
        fi
    done
}

while [ "$1" != "" ];do
  case "$1" in
    "-q")
        QualityCompressed "$2"
        exit 0
        ;;
    "-r")
        ResolutionCompressed "$2"
        exit 0
        ;;
    "-w")
        AddCustomTextWatermark "$2" "$3"
        exit 0
        ;;
    "-p")
        AddPrefix "$2"
        exit 0
        ;;
    "-s")
        AddSuffix "$2"
        exit 0
        ;;
    "-t")
        ImageTransition_jpg
        exit 0
        ;;
    "-h")
        help
        exit 0
        ;;
  esac
done
