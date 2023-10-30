@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Rating'
define view entity ZR_590076_Rating
  as select from zabap_rating_a
  association to parent ZR_590076_Movie as _Movie on $projection.MovieUuid = _Movie.MovieUuid
{
  key zabap_rating_a.rating_uuid as RatingUuid,
      zabap_rating_a.movie_uuid  as MovieUuid,
      zabap_rating_a.user_name   as UserName,
      zabap_rating_a.rating      as Rating,
      zabap_rating_a.rating_date as RatingDate,

      /* Assosiations */
      _Movie
}
