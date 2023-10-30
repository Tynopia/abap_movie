@EndUserText.label: 'Movie'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_590076_Movie
  provider contract transactional_query
  as projection on ZR_590076_Movie
{
  key MovieUuid,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Title,
      
      @Consumption.valueHelpDefinition: [{
        entity: {
          name: 'ZI_590076_GenreText',
          element: 'GenreText'
        }
      }]
      Genre,
      
      PublishingYear,
      RuntimeInMin,
      ImageUrl,
      CreatedAt,
      CreatedBy,
      LastChangedAt,
      LastChangedBy,
      
      /* Transient Data */
      GenreText,

      /* Assosiations */
      _Ratings : redirected to composition child ZC_590076_Rating
}
