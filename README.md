# my_gitlab_docker
my gitlab docker

## Discription
自分用のgitlab dockerです. gitlab docker-composeについては, [sameersbn](https://github.com/sameersbn)のリポジトリのソースコードから取ってきました. (ただ設定が見にくいからファイルを分割しただけとか言えない...

また, 自分自身が英語難民なので, [こちら](https://github.com/ksoichiro/gitlab-i18n-patch)からgitlabを日本語化するためのパッチを当てるように, Dockerfileを作りました.

参考サイト
- [sameersbnのgitlab dockerについてのリポジトリ](https://github.com/sameersbn/docker-gitlab)
- [gilabの日本語パッチ](https://github.com/ksoichiro/gitlab-i18n-patch)

基本はgitlabのバージョンも最新のほうがいいと思います.
日本語のパッチのバージョンが上がった場合, 「.env」の「JP_GITLAB_VERSION=${最新のバージョン}」とすればいいです.

## Installation

下のコードを実行し, ブラウザのURLで「localhost:10080」と打つと, gitlabにアクセスできます.

```bash
git clone e155753/my_gitlab_docker
cd my_gitlab_docker
docker-compose up
```

DBのhost, userなどの設定は「db.env」にあります. また, gitlabのhost, メールアドレス, そのサーバー, 認証などについては「gitlab.env」にあります.

デフォルトでは, バージョンを下げて日本語のgitlabにしていますが, 別に英語でもいい場合は「docker-compose.yml」27行目~37行目の部分を次のようにして下さい.

```
    #1 -- gitlab が英語でもいい場合, 下のimageをコメントアウト
    image: sameersbn/gitlab
    # -------------------------------------------------------------------------------

    #2 -- gitlab を日本語化したい場合, 次の線までコメントアウト
    #build:
    #  context: .
    #  args:
    #    - JP_GITLAB_VERSION=${JP_GITLAB_VERSION}
    #image: sameersbn/gitlab
    # -------------------------------------------------------------------------------
```

以上です.

## Author
e155753

## License
Mit License