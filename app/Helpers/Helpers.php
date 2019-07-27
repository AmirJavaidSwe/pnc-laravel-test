<?php
// Functionality 1 start
/* my_password_hash("password");
return encrypt.. e.g 34304jdfkdkfj */
function my_password_hash($password){
    $new_password = password_hash($password, PASSWORD_BCRYPT);
    return $new_password;
}
/*my_password_verify("password","last_encrypted_string"); // pass password, and previous encrypted string for compare
return true false*/
function my_password_verify($password,$hash){
    return password_verify($password,$hash);
}
function encryptor($action, $string) {
    $output = false;
    $encrypt_method = "AES-256-CBC";
    //pls set your unique hashing key
    $secret_key = 'ssm';
    $secret_iv = 'ssm123';
    // hash
    $key = hash('sha256', $secret_key);
    // iv - encrypt method AES-256-CBC expects 16 bytes - else you will get a warning
    $iv = substr(hash('sha256', $secret_iv), 0, 16);
    //do the encyption given text/string/number
    if( $action == 'encrypt' ) {
        $output = openssl_encrypt($string, $encrypt_method, $key, 0, $iv);
        $output = base64_encode($output);
    }
    else if( $action == 'decrypt' ){
        //decrypt the given text/string/number
        $output = openssl_decrypt(base64_decode($string), $encrypt_method, $key, 0, $iv);
    }
    return $output;
}
function safe_b64encode($string)
{
    $data = base64_encode($string);
    $data = str_replace(array('+', '/', '='), array('-', '_', ''), $data);
    return $data;
}
function safe_b64decode($string)
{
    $data = str_replace(array('-', '_'), array('+', '/'), $string);
    $mod4 = strlen($data) % 4;
    if ($mod4) {
        $data .= substr('====', $mod4);
    }
    return base64_decode($data);
}
// Functionality 2 End
function set_secure_id($id){
    return encryptor('encrypt', $id);
}
function get_secure_id($encrypt_id){
    return encryptor('decrypt', $encrypt_id);
}
function set_msg_session($id, $title, $message = '', $type="success"){
  $msg["title"]        = $title;
  $msg["msg"]          = $message;
  $msg["type"]         = $type;
  session(["form.".$id => $msg]);
}
function get_all_msg_session(){
  if(session()->has("form")){
    return session("form");
  }
  return array();
}
function clear_msg_session(){
  session()->forget("form");
}
function catch_exception($e){
  $msg  = $e->getMessage();
  $line = $e->getLine();
  $file = basename($e->getFile());
  set_msg_session("catch", "Error Msg", "msg: $msg.Line:$line. File: $file", 'error');
}