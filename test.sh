function hello() {
    name="$1"
    text=$(cat <<EOF
Hello, $name!
This is a multiline string.
EOF
    )
    echo "$text!"
}


function post_to_feishu() {
    local text="$1"
    curl -X POST -H "Content-Type: application/json" \
    -d @- https://open.feishu.cn/open-apis/bot/v2/hook/ead5417f-20b9-425c-8ce7-f4b8dd008deb <<EOF
    {
        "msg_type": "text",
        "content": {
        "text": "$text"
        }
    }
EOF
}

PR_INFO="abc\n123"
post_to_feishu "$PR_INFO"