#!/bin/sh

# デフォルトモード　check=構文チェックモード
_MODE_DEFAULT=check
_MODE_EXECUTE=execute

mode=

# モードチェック
if [ "$1" = "" ]; then
    # 未入力、不一致のときは、チェックモードで実行
    printf '実行モードを入力（構文チェック：check, 実行：execute）: '
    read mode
else
    # 実行時の引数があれば、それを利用
    mode="$1"
fi

if [ "$mode" = $_MODE_EXECUTE ] || [ "$mode" = "e" ]; then
    # ansible-playbook 01_setup.yml -i 01_inventory
    printf '間違って実行しないようにコメントアウト中\n'
else
    printf '構文チェックを実行 -----\n'
    # ansible構文チェック
    ansible-playbook --syntax-check 01_setup.yml -i 01_inventory
fi
