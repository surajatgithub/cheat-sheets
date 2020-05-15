# Transactions
```sh
// Start the transation
$this->db->trans_start();

// YOu database transactions

if ($this->db->trans_status() === false) {
    $this->db->trans_rollback();
    return false;
} else {
    $this->db->trans_commit();
    return true;
}
```