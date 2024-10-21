<?php
if (!defined('_INCODE')) die('Access Deined...');

/*File này dùng để xoá người dùng*/
$body = getBody();

$errors = [];

if (!empty($body['id'])) {
    $ID = $body['id'];
    $DetaiRow = getRows("SELECT id FROM slides WHERE id=$ID");

    if ($DetaiRow > 0) {
        /* Thực hiện xóa*/
        /* Xóa User */
        $deleteUser = delete('slides', "id=$ID");

        if ($deleteUser) {
            echo json_encode(array(['msg' => "Xóa slide thành công!", 'msgType' => "success"]));
        } else {
            setFlashData('msg', 'Lỗi hệ thống! Vui lòng thử lại sau');
            setFlashData('msgType', 'danger');
            redirect('admin?module=users&action=list');
        }
    } else {
        setFlashData('msg', 'Người dùng không tồn tại trên hệ thống');
        setFlashData('msgType', 'danger');
        redirect('admin?module=slides&action=list');
    }
} else {
    setFlashData('msg', 'Liên kết không tồn tại');
    setFlashData('msgType', 'danger');
    redirect('admin?module=slides&action=list');
}
