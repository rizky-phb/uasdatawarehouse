<?php 
 public function get_sales_prediction( $product_id, $start_date, $end_date )
  {
      $this->select( $this->table.'.*');
      $this->select( 'product.name as product_name');
      $this->select( 'CONCAT( '.$this->table.'.month, " ", '.$this->table.'.year ) as month_year');
      $this->select( 'sale.quantity as _y');
      $this->select( '0 as _x');
      $this->select( '0 as _xx');
      $this->select( '0 as _xy');
      $this->join( 
        'product',
        'product.id = sale.product_id',
        'inner'
      );
      $this->where( $this->table.'.product_id', $product_id);

      $this->where( $this->table.'.date BETWEEN "'.$start_date.'" AND "'.$end_date.'" ', "");
      $this->order_by( "sale.year asc , sale.month asc", "");
      return $this->fetch_data();
  }?>