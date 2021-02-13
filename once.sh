if [ -z $1 ];then
parame="first commit"
else
parame=$1
fi

# 第一次关联两个仓库
echo -e "\n== init =="
git init
git add .
git commit -m "${parame}"
echo -e "== init end ==\n"

git remote add github git@github.com:uphg/vue-regex-expression.git
git remote add gitee git@gitee.com:uphg/vue-regex-expression.git

echo "== push Github =="
git push github master:master
echo -e "== push Github end ==\n"

echo "== push Gitee =="
git push gitee master:master
echo -e "== push Gitee end ==\n"
