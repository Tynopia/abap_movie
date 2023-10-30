@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Rating'
@Metadata.allowExtensions: true
define view entity ZC_590076_Rating as projection on ZR_590076_Rating
{
  key RatingUuid,
  MovieUuid,
  UserName,
  Rating,
  RatingDate,
  /* Associations */
  _Movie: redirected to parent ZC_590076_Movie
}
