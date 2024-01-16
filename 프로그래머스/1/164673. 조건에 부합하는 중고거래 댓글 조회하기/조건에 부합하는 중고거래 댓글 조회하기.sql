-- 코드를 입력하세요
SELECT
    board.title
    , board.board_id
    , reply.reply_id
    , reply.writer_id
    , reply.contents
    , DATE_FORMAT(reply.created_date, '%Y-%m-%d') AS created_date
FROM used_goods_board AS board
RIGHT JOIN used_goods_reply AS reply
ON board.board_id = reply.board_id
WHERE board.created_date BETWEEN '2022-10-01' AND '2022-10-31'
ORDER BY reply.created_date ASC, board.title ASC;
