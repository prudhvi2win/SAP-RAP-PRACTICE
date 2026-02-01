@EndUserText.label: 'My Travel processor projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZDEEPU_BOOKSUPPL_PROJ
    as projection on ZDEEPU_BOOKSUPPL
{
    key TravelId,
    key BookingId,
    key BookingSupplementId,
    SupplementId,
    Price,
    CurrencyCode,
    LastChangedAt,
    /* Associations */
    _Booking: redirected to parent ZDEEPU_BOOKING_PROJ,
    _Travel: redirected to ZDEEPU_TRAVEL_PROJ
}
