<?php
namespace App\Model\Table;

use Cake\ORM\Table;
use Cake\Validation\Validator;

class OrderItemsTable extends Table
{
 public function initialize(array $config)
    {
        parent::initialize($config);

        $this->table('fc_order_items');
       
        $this->primaryKey('orderItemid');

        $this->addBehavior('Timestamp');
 
      
    }
    
  
}
?>
