

DROP PROCEDURE IF EXISTS `sp_grid_getIRNDetails`;
DELIMITER //
CREATE  PROCEDURE `sp_grid_getIRNDetails`(
    IN `p_gstin` VARCHAR(20),
    IN `p_date` VARCHAR(20)
)
BEGIN

DECLARE doc_date Date;

SET @doc_date=STR_TO_DATE(p_date, '%d-%m-%Y');
SET @supp_gstin_new:=p_gstin;
SET @supp_gstin_new2 := CONCAT("'",replace(@supp_gstin_new,",","','"),"'");


SET @query1:=CONCAT("SELECT 
    h.einv_billhid,h.einv_status,
    h.supplier_gstin,
    h.supply_type,
    h.doc_type,
    h.buyer_gstin,
    h.buyer_legal_name,
    h.doc_no,
    h.doc_date,
    h.ass_amt,
    h.total_invoice_amt,
    h.total_tax_amt
FROM einv_bill_h h
    INNER JOIN einv_irn_details id ON id.einv_billhid = h.einv_billhid AND id.is_active=1
WHERE id.irp_error = 2150
    AND  h.supplier_gstin IN (",@supp_gstin_new2 ,")
    AND h.doc_date='",@doc_date,"'
    AND h.einv_status = 3");
    PREPARE stmt FROM @query1;
         EXECUTE stmt ;
         DEALLOCATE PREPARE stmt;

END//
DELIMITER ;