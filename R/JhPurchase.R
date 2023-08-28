#' 反写采购合同
#'
#' @param token 中台数据库token
#' @param FNumber 单据编号
#' @param FName ERP账套名
#'
#' @return
#' @export
#'
#' @examples
#' purchaseContract_update('C0426D23-1927-4314-8736-A74B2EF7A039')
purchaseContract_update<- function(token){
  #注册python模板
  mdl <- tsda::import('mdlJhPurchaseContractWritebackpy.main')
  
  res <- mdl$purchaseContract_update(token)
  #返回结果
  return(res)
  
}

