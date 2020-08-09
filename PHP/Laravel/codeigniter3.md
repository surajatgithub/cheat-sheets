# Transactions
```sh
// Start the transation
$this->db->trans_start();

// YOu database transactions

if ($this->db->trans_status()) {
    $this->db->trans_commit();
    return true;
} else {
    $this->db->trans_rollback();
    return false;
}
```