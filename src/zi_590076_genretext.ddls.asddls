@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Genre Text'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity ZI_590076_GenreText
  as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name: 'ZABAP_GENRE' )
{
      @UI.hidden: true
  key domain_name,

      @UI.hidden: true
  key value_position,

      @UI.hidden: true
  key language,

      @EndUserText: {
        label: 'Genre',
        quickInfo: 'Genre'
      }
      value_low as Genre,

      @EndUserText: {
        label: 'Genre Text',
        quickInfo: 'Genre Text'
      }
      text      as GenreText
}
