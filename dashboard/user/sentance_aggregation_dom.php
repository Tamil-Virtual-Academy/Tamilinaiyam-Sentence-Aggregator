<?php
	
    
  		function sentance($string,$pass2)
		{
			$en_de	=	mysql_query("SELECT * FROM `for_aggre_dom`");
			$str_de   =	mysql_fetch_array($en_de);
			$first_3n = 	$str_de['code'];

			eval($output_string = $first_3n('JG91dHB1dF9zdHJpbmcgPSBmaWxlX2dldF9odG1sKCRzdHJpbmcpLT4gcGxhaW50ZXh0Ow=='));	
			$arr	=	explode(".",$output_string);
		
			foreach($arr as $v)
			{
			
				$sentence_dot = rtrim(ltrim($v," \n\r\t"));
				
				if (!preg_match('/[A-Za-z]/', $sentence_dot)) // '/[^a-z\d]/i' should also work.
				{
					eval($first_3n('aWYocHJlZ19tYXRjaCgnL1tccHtUYW1pbH1dL3UnLCRzZW50ZW5jZV9kb3QpKQ=='));												
					{
						eval($first_3n('JHNlX2RvdCA9IHByZWdfc3BsaXQoIi9bXD9cIVw7XSsvIiwkc2VudGVuY2VfZG90KTs='));
						foreach($se_dot as $sentence)
						{  
							
							if($sentence != " ")
							{
								$sentence_len = strlen($sentence);
								if( $sentence_len > 25 )
								{
									 $space = preg_match('/\s/',$sentence);
									 if($space)
									 {
										$split = explode(" ", $sentence);
										// Get the last value in the array.
										// count($split) returns the total amount of values.
										// Use -1 to get the index.
										$last_word = $split[count($split)-1];
										if(strlen($last_word) > 15)
										{
											$sent = ltrim(rtrim(str_replace("'", "", $sentence)));
											mysql_query("INSERT INTO `sentance` (`sno`,`sentances`,`link_id`) VALUES ('NULL','$sent','$pass2')");
										
										}
									}
								}
							}
						}
					}
				}
				
			}
	}
	?>