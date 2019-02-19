for var in `env |egrep "^URL_"`; do
        name=`echo $var | cut -d= -f 1 | cut -d_ -f 2`
        value=`echo $var | cut -d= -f 2`
        find . -name "*.md" -exec sed -i -e "s/URL_${name}/$value/g" {} \;
done
grunt serve
