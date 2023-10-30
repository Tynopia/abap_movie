@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Movie'
define root view entity ZR_590076_Movie
  as select from zabap_movie_a
  composition [0..*] of ZR_590076_Rating as _Ratings
  association [1..1] to ZI_590076_GenreText as _GenreText on $projection.Genre = _GenreText.Genre
{
  key movie_uuid      as MovieUuid,
      title           as Title,
      genre           as Genre,
      publishing_year as PublishingYear,
      runtime_in_min  as RuntimeInMin,
      image_url       as ImageUrl,

      /* Admin Data  */
      created_at      as CreatedAt,
      created_by      as CreatedBy,
      last_changed_at as LastChangedAt,
      last_changed_by as LastChangedBy,
      
      /* Transient Data */
      _GenreText.GenreText,
      
      /* Assosiations */
      _Ratings
}
